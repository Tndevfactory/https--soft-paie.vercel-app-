<?php

namespace App\Http\Controllers;
use PDF;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

class MailController extends Controller
{
     /**
     * one fiche de paie
     *
     * @return response()
     */
    public function fichePaie()
    {
        $data["email"] = "devops12345678910@gmail.com";
        $data["title"] = "fiche-de-paie-mars-2021";
        $data["body"] = "Bonjour, ci-joint la fiche de paie du mois de mars 2021.";
  
        $pdf = PDF::loadView('fiche_paie_pdf', $data);
  
        Mail::send('emails.corps_pdf_mail', $data, function($message) use($data, $pdf) {
            $message->to( $data["email"] ,  'soft-paie' )
                    ->subject($data["title"])
                    ->attachData($pdf->output(), "fiche-de-paie.pdf");
        });
  
        //dd('Mail sent successfully');
    }
     /**
     * mass fiche de paie to all employee
     *
     * @return response()
     */
    public function massFichePaie()
    {

       $emails=User::pluck('email');

        //dd($emails);

        $data["email"] = "devops12345678910@gmail.com";
        $data["title"] = "fiche-de-paie-mars-2021";
        $data["body"] = "Bonjour, ci-joint la fiche de paie du mois de mars 2021.";
  
        $pdf = PDF::loadView('fiche_paie_pdf', $data);
  
        foreach($emails as $email){

            Mail::send('emails.corps_pdf_mail', $data, function($message) use($data, $pdf, $email) {
                $message->to( $email ,  'soft-paie' )
                        ->subject($data["title"])
                        ->attachData($pdf->output(), "fiche-de-paie.pdf");
            });
        }

       
    }

    /**
     * general mail
     *
     * @return response()
     */
    public function simpleMail(Request $request)
    {
        // $data = array(
        //         'name'=> $request->name,
        //         'email'=> $request->email,
        //         'text'=> $request->text,
        //         'category'=> $request->category,
        //         'company'=> $request->company,
        //         'number'=> $request->number
        //     );


        //$all= $request->all();
        $title= $request->title;
        $body= $request->body;
        $file= $request->file;

        //File Name
        //$info_file=$file->getClientOriginalName();

        //Display File Extension
       //$info_file=$file->getClientOriginalExtension();

        //Display File Real Path
       // $info_file=$file->getRealPath();

        //Display File Size
        //$info_file=$file->getSize();

        //Display File Mime Type
        //$info_file=$file->getMimeType();

        //Move Uploaded File
        //$destinationPath = 'uploads';
        //$info_file=$file->move($destinationPath,$file->getClientOriginalName());

        //dd($info_file);
        //return($info_file);

        $sender["email"] = "devops12345678910@gmail.com";
        $sender["title"] = $title ?? 'no title';
        $sender["body"] = $body ?? 'no body';
  
        
  
        Mail::send('emails.simple_mail', $sender, function($message) use($sender, $file) {
            $message->to( $sender["email"] ,  'soft-paie' )
                    ->subject($sender["title"])
                    ->attach($file->getRealPath(), 
                     [
                        'as' => $file->getClientOriginalName(),
                       'mime' => $file->getMimeType(),
                  ]);
        });

        
        $data = [

            ["success" => "mail sent", ], 

            ["info" => "pretty sure that is sent ch", ]
        ];
       
        return $data;
    }
}
