.class final Lcom/google/android/gms/ads/internal/zzl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zzsY:Lcom/google/android/gms/internal/zzaff;

.field final synthetic zztd:Lcom/google/android/gms/ads/internal/zzi;

.field final synthetic zzte:Lcom/google/android/gms/internal/zzaes;

.field private synthetic zztf:Lcom/google/android/gms/internal/zznb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzi;Lcom/google/android/gms/internal/zzaff;Lcom/google/android/gms/internal/zzaes;Lcom/google/android/gms/internal/zznb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzl;->zztd:Lcom/google/android/gms/ads/internal/zzi;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsY:Lcom/google/android/gms/internal/zzaff;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzl;->zzte:Lcom/google/android/gms/internal/zzaes;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/zzl;->zztf:Lcom/google/android/gms/internal/zznb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsY:Lcom/google/android/gms/internal/zzaff;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaff;->zzXY:Lcom/google/android/gms/internal/zzaah;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzaah;->zzTx:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zztd:Lcom/google/android/gms/ads/internal/zzi;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzi;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwq:Lcom/google/android/gms/internal/zznh;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsY:Lcom/google/android/gms/internal/zzaff;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzaff;->zzXY:Lcom/google/android/gms/internal/zzaah;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzaah;->zzPi:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagy;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsY:Lcom/google/android/gms/internal/zzaff;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaff;->zzXY:Lcom/google/android/gms/internal/zzaah;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaah;->zzPi:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagy;->zzaI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/zznc;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzl;->zztd:Lcom/google/android/gms/ads/internal/zzi;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsY:Lcom/google/android/gms/internal/zzaff;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzaff;->zzXY:Lcom/google/android/gms/internal/zzaah;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzaah;->body:Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/gms/internal/zznc;-><init>(Lcom/google/android/gms/ads/internal/zzag;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zztd:Lcom/google/android/gms/ads/internal/zzi;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzi;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iput v4, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwv:I

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zztd:Lcom/google/android/gms/ads/internal/zzi;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/google/android/gms/ads/internal/zzi;->zzsP:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zztd:Lcom/google/android/gms/ads/internal/zzi;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzi;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwq:Lcom/google/android/gms/internal/zznh;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zznh;->zza(Lcom/google/android/gms/internal/zzne;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call the onCustomRenderedAdLoadedListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzafq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zztd:Lcom/google/android/gms/ads/internal/zzi;

    iput-boolean v4, v0, Lcom/google/android/gms/ads/internal/zzi;->zzsP:Z

    :cond_1
    new-instance v0, Lcom/google/android/gms/ads/internal/zzw;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzl;->zzte:Lcom/google/android/gms/internal/zzaes;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/zzw;-><init>(Lcom/google/android/gms/internal/zzaes;)V

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzl;->zztd:Lcom/google/android/gms/ads/internal/zzi;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsY:Lcom/google/android/gms/internal/zzaff;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzl;->zzte:Lcom/google/android/gms/internal/zzaes;

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/gms/ads/internal/zzi;->zza(Lcom/google/android/gms/internal/zzaff;Lcom/google/android/gms/ads/internal/zzw;Lcom/google/android/gms/internal/zzaes;)Lcom/google/android/gms/internal/zzajz;
    :try_end_1
    .catch Lcom/google/android/gms/internal/zzakl; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    new-instance v1, Lcom/google/android/gms/ads/internal/zzn;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/ads/internal/zzn;-><init>(Lcom/google/android/gms/ads/internal/zzl;Lcom/google/android/gms/ads/internal/zzw;)V

    invoke-interface {v4, v1}, Lcom/google/android/gms/internal/zzajz;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v1, Lcom/google/android/gms/ads/internal/zzo;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/ads/internal/zzo;-><init>(Lcom/google/android/gms/ads/internal/zzl;Lcom/google/android/gms/ads/internal/zzw;)V

    invoke-interface {v4, v1}, Lcom/google/android/gms/internal/zzajz;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zztd:Lcom/google/android/gms/ads/internal/zzi;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzi;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iput v5, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwv:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zztd:Lcom/google/android/gms/ads/internal/zzi;

    iget-object v8, v0, Lcom/google/android/gms/ads/internal/zzi;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzby()Lcom/google/android/gms/internal/zzxw;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zztd:Lcom/google/android/gms/ads/internal/zzi;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzi;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzqF:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzl;->zztd:Lcom/google/android/gms/ads/internal/zzi;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsY:Lcom/google/android/gms/internal/zzaff;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzl;->zztd:Lcom/google/android/gms/ads/internal/zzi;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzi;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzbt;->zzvU:Lcom/google/android/gms/internal/zzcu;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/zzl;->zztd:Lcom/google/android/gms/ads/internal/zzi;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/zzi;->zzsZ:Lcom/google/android/gms/internal/zzuq;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/zzl;->zztd:Lcom/google/android/gms/ads/internal/zzi;

    iget-object v7, p0, Lcom/google/android/gms/ads/internal/zzl;->zztf:Lcom/google/android/gms/internal/zznb;

    invoke-static/range {v0 .. v7}, Lcom/google/android/gms/internal/zzxw;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/zzaff;Lcom/google/android/gms/internal/zzcu;Lcom/google/android/gms/internal/zzajz;Lcom/google/android/gms/internal/zzuq;Lcom/google/android/gms/internal/zzxx;Lcom/google/android/gms/internal/zznb;)Lcom/google/android/gms/internal/zzaho;

    move-result-object v0

    iput-object v0, v8, Lcom/google/android/gms/ads/internal/zzbt;->zzvY:Lcom/google/android/gms/internal/zzaho;

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Could not obtain webview."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzafq;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/google/android/gms/internal/zzagy;->zzZr:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/zzm;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/zzm;-><init>(Lcom/google/android/gms/ads/internal/zzl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
