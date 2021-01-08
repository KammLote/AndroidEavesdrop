.class public final Lcom/google/android/gms/internal/zzamt;
.super Lcom/google/android/gms/internal/zzamg;


# instance fields
.field private final zzaeh:Lcom/google/android/gms/internal/zzalj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzami;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzamg;-><init>(Lcom/google/android/gms/internal/zzami;)V

    new-instance v0, Lcom/google/android/gms/internal/zzalj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzalj;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzamt;->zzaeh:Lcom/google/android/gms/internal/zzalj;

    return-void
.end method


# virtual methods
.method protected final zzjD()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamt;->zzkt()Lcom/google/android/gms/analytics/zzl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zzl;->zzjA()Lcom/google/android/gms/internal/zzalj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamt;->zzaeh:Lcom/google/android/gms/internal/zzalj;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzalj;->zza(Lcom/google/android/gms/internal/zzalj;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamt;->zzkx()Lcom/google/android/gms/internal/zzaos;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaos;->zzjG()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzamt;->zzaeh:Lcom/google/android/gms/internal/zzalj;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzalj;->setAppName(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaos;->zzjH()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamt;->zzaeh:Lcom/google/android/gms/internal/zzalj;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzalj;->setAppVersion(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final zzkW()Lcom/google/android/gms/internal/zzalj;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamt;->zzkD()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamt;->zzaeh:Lcom/google/android/gms/internal/zzalj;

    return-object v0
.end method
