<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Session\SessionInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\PropertyAccess\PropertyAccess;
use Symfony\Component\Validator\Constraints as Assert;
use Symfony\Component\Validator\Validator\ValidatorInterface;
use Symfony\Component\Validator\Context\ExecutionContextInterface;
use App\Controller\Eshop_modelController;

class EshopController extends AbstractController
{
    
	private $session;
	private $eshop_model;
	private $validator;
	
	public function __construct(SessionInterface $session, Eshop_modelController $eshop_model, ValidatorInterface $validator)
    {
		$this->session = $session;
		$this->eshop_model = $eshop_model;
 		$this->validator = $validator;
    }
	
		
    /**
     * @Route("/eshop/products/{id?}", name="products")
     */
    public function index(): Response
    {
        return $this->render('eshop/products.html.twig', [
            'controller_name' => 'EshopController',
        ]);
    }
}
