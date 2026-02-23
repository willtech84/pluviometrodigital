# Backup automático

Como usar

- Executar localmente:

```bash
chmod +x backup/backup.sh
./backup/backup.sh
```

- Agendar com `crontab` (exemplo: todos os dias às 02:00):

```cron
0 2 * * * cd /caminho/para/repo && ./backup/backup.sh
```

GitHub Actions

O workflow em `.github/workflows/backup.yml` cria um backup diário e envia como artifact do workflow. Artifacts ficam disponíveis nas execuções do Actions.
