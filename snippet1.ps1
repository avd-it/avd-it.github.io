

try {  
    #Importeer de teams uit een csv-bestand
    $Teams = import-csv -LiteralPath ".\Teams.csv"

    
    foreach($Team in $Teams) {  
        $teamName = $Team.Naam  
        $teamDescription = $Team.Omschrijving
        $teamOwner = $Team.Eigenaar  
        $teamVisibility = $Team.Zichtbaaarheid  
        #create the team with specified parameters  
        #$groupID = New-Team -DisplayName $teamName -Owner $teamOwner -Description $teamDescription -Visibility $teamVisibility  
        Write-host $Team.Naam
        Write-host $Team.Omschrijving
        Write-host $Team.Eigenaar
        Write-host $Team.Zichtbaarheid
        Write-Host "Team " $teamName " succesvol aangemaakt..."  
    }  
    Write-Host $Teams.Count " teams were created" - ForegroundColor Green - BackgroundColor Black  
} 
catch {  
    Write-Host "An error occurred:"  
    Write-Host $_  
}  