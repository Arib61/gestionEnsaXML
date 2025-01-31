import os
import subprocess

def transform_xml_to_pdf(xml_file, xslt_file, output_pdf):
    """
    Transforme un fichier XML en PDF à l'aide d'un fichier XSLT-FO en utilisant Apache FOP.
    """
    try:
        # Récupérer le chemin d'Apache FOP depuis une variable d'environnement
        fop_path = os.getenv("FOP_PATH", "fop")  # Défaut : "fop" (si FOP est dans le PATH)
        
        # Construire la commande
        command = f"{fop_path} -xml \"{xml_file}\" -xsl \"{xslt_file}\" -pdf \"{output_pdf}\""
        
        # Exécuter la commande
        print(f"🛠️  Exécution de la commande : {command}")
        subprocess.run(command, shell=True, check=True)
        
        print(f"✅ PDF généré avec succès : {output_pdf}")
        return True
    except subprocess.CalledProcessError as e:
        print(f"❌ Erreur lors de la génération du PDF : {e}")
<<<<<<< HEAD
        return False

=======
        return False
>>>>>>> a1c9e39 (Ajout des nouvelles mises à jour dans Arib_Final_Flask)
