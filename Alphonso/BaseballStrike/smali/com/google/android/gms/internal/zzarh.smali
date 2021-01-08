.class final Lcom/google/android/gms/internal/zzarh;
.super Lcom/google/android/gms/internal/zzarc;


# instance fields
.field private synthetic zzalz:Lcom/google/android/gms/internal/zzarg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzarg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzarh;->zzalz:Lcom/google/android/gms/internal/zzarg;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzarc;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/auth/api/credentials/Credential;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarh;->zzalz:Lcom/google/android/gms/internal/zzarg;

    new-instance v1, Lcom/google/android/gms/internal/zzare;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/zzare;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/auth/api/credentials/Credential;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzarg;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarh;->zzalz:Lcom/google/android/gms/internal/zzarg;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzare;->zze(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/internal/zzare;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzarg;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
