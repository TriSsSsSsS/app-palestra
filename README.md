# GymTracker Pro 💪

Applicazione web per il tracking degli allenamenti in palestra con assistente AI integrato per la generazione di schede personalizzate.

## 🌟 Caratteristiche

- **Tracking Allenamenti**: Monitora i tuoi esercizi, serie, ripetizioni e pesi
- **Schede Personalizzate**: Crea e gestisci le tue schede di allenamento
- **Grafici Progressi**: Visualizza i tuoi miglioramenti nel tempo
- **Calendario**: Traccia la tua consistenza con il calendario allenamenti
- **AI Assistant**: Genera schede personalizzate con intelligenza artificiale (Google Gemini)
- **Offline-Ready**: Salvataggio locale con localStorage

## 🚀 Deploy su Netlify

### Prerequisiti

1. Account GitHub
2. Account Netlify
3. API Key di Google Gemini ([Ottienila qui](https://makersuite.google.com/app/apikey))

### Passi per il Deploy

1. **Fork o clona questo repository**

2. **Connetti il repository a Netlify**
   - Vai su [Netlify](https://app.netlify.com/)
   - Click su "New site from Git"
   - Seleziona GitHub e autorizza
   - Scegli questo repository

3. **Configura le Environment Variables**
   - Nel dashboard Netlify, vai a: `Site settings > Build & deploy > Environment`
   - Aggiungi la variabile:
     - **Key**: `GEMINI_API_KEY`
     - **Value**: La tua API key di Google Gemini

4. **Configura Build Settings** (dovrebbero essere automatiche con netlify.toml)
   - Build command: `bash build.sh`
   - Publish directory: `.`

5. **Deploy!**
   - Click su "Deploy site"
   - Attendi il completamento del build
   - Il tuo sito sarà live! 🎉

## 🔒 Sicurezza

- ✅ La tua API key NON è mai committata su GitHub
- ✅ La chiave viene iniettata durante il build su Netlify
- ✅ File `.gitignore` protegge i file sensibili
- ✅ Headers di sicurezza configurati in `netlify.toml`

## 🛠️ Sviluppo Locale

1. Clona il repository:
```bash
git clone https://github.com/tuousername/gymtracker-pro.git
cd gymtracker-pro
```

2. Copia il file di esempio delle variabili d'ambiente:
```bash
cp .env.example .env
```

3. Modifica `.env` e inserisci la tua API key:
```
GEMINI_API_KEY=la_tua_api_key_qui
```

4. Apri `index.html` nel browser

## 📁 Struttura del Progetto

```
gymtracker-pro/
├── index.html              # Pagina principale
├── config.js              # File di configurazione (generato durante build)
├── config-public.js       # Template configurazione pubblica
├── build.sh               # Script di build per Netlify
├── netlify.toml           # Configurazione Netlify
├── .gitignore             # File da escludere da Git
├── .env.example           # Template variabili d'ambiente
├── .env                   # Variabili d'ambiente (NON committare)
└── README.md              # Questo file
```

## 🎯 Features AI Assistant

L'assistente AI può:
- Generare schede personalizzate basate su:
  - Livello di esperienza
  - Obiettivi personali
  - Limitazioni fisiche
  - Preferenze esercizi
  - Tipo di allenamento
- Adattare il volume e l'intensità
- Fornire note e consigli personalizzati

## 📝 Note

- **API Usage**: L'app usa Google Gemini API che ha limiti di utilizzo gratuiti. Monitora il tuo consumo.
- **Storage**: I dati degli allenamenti sono salvati localmente nel browser (localStorage)
- **Browser Support**: Compatibile con browser moderni (Chrome, Firefox, Safari, Edge)

## 🤝 Contribuire

Le pull request sono benvenute! Per modifiche importanti, apri prima un issue per discutere cosa vorresti cambiare.

## 📜 Licenza

[MIT](https://choosealicense.com/licenses/mit/)

## 👨‍💻 Autore

Creato con 💪 per appassionati di fitness

---

**Happy Training! 🏋️‍♂️**
