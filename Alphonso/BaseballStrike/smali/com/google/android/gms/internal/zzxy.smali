.class public Lcom/google/android/gms/internal/zzxy;
.super Lcom/google/android/gms/internal/zzxq;

# interfaces
.implements Lcom/google/android/gms/internal/zzake;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzm;
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzaff;Lcom/google/android/gms/internal/zzajz;Lcom/google/android/gms/internal/zzxx;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzxq;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzaff;Lcom/google/android/gms/internal/zzajz;Lcom/google/android/gms/internal/zzxx;)V

    return-void
.end method


# virtual methods
.method protected final zzgo()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxy;->zzQR:Lcom/google/android/gms/internal/zzaah;

    iget v0, v0, Lcom/google/android/gms/internal/zzaah;->errorCode:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzxy;->zzJJ:Lcom/google/android/gms/internal/zzajz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzajz;->zziw()Lcom/google/android/gms/internal/zzaka;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzaka;->zza(Lcom/google/android/gms/internal/zzake;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzxy;->zzgq()V

    const-string v0, "Loading HTML in WebView."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafq;->zzaC(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxy;->zzJJ:Lcom/google/android/gms/internal/zzajz;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzxy;->zzQR:Lcom/google/android/gms/internal/zzaah;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzaah;->zzPi:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzxy;->zzQR:Lcom/google/android/gms/internal/zzaah;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzaah;->body:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/zzajz;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected zzgq()V
    .locals 0

    return-void
.end method
