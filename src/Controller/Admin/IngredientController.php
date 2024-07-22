<?php

namespace App\Controller\Admin;

use App\Entity\Ingredient;
use App\Form\IngredientType;
use App\Repository\IngredientRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;

#[Route('/admin/ingredient', name: 'admin_ingredient_', methods: ['GET'])]
class IngredientController extends AbstractController
{

    #[Route('/', name: 'index')]
    public function index(IngredientRepository $repository)
    {
        $ingredients = $repository->findAll();

        return $this->render('admin/ingredient/index.html.twig', [
            'ingredients' => $ingredients
        ]);
    }

    #[Route('/create', name: 'create', methods: ['GET', 'POST'])]
    public function create(EntityManagerInterface $em, Request $request): Response
    {
        $ingredient = new Ingredient();
        $form = $this->createForm(IngredientType::class, $ingredient);
        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
            $em->persist($ingredient);
            $em->flush();
            $this->addFlash('success', 'Votre ingrédient à bien été ajouté !');

            return $this->redirectToRoute('admin_ingredient_index');
        }

        return $this->render('admin/ingredient/create.html.twig', [
            'form' => $form
        ]);
    }

    #[Route('/update', name: 'update', methods: ['GET', 'POST'])]
    public function update(EntityManagerInterface $em, Request $request, Ingredient $ingredient): Response
    {
        $form = $this->createForm(IngredientType::class, $ingredient);
        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
            $em->persist($ingredient);
            $em->flush();
            $this->addFlash('success', 'Votre ingrédient à bien été modifié !');

            return $this->redirectToRoute('admin_ingredient_index');
        }

        return $this->render('admin/ingredient/update.html.twig', [
            'form' => $form
        ]);
    }
}
