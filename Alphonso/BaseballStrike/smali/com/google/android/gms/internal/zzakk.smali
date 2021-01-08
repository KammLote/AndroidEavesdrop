.class final Lcom/google/android/gms/internal/zzakk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/google/android/gms/internal/zzajz;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzAI:Lcom/google/android/gms/internal/zziv;

.field private synthetic zzKQ:Lcom/google/android/gms/internal/zzajd;

.field private synthetic zzKS:Lcom/google/android/gms/ads/internal/zzv;

.field private synthetic zzLh:Lcom/google/android/gms/internal/zzcu;

.field private synthetic zzabL:Z

.field private synthetic zzabM:Z

.field private synthetic zzabN:Lcom/google/android/gms/internal/zznb;

.field private synthetic zzabO:Lcom/google/android/gms/ads/internal/zzbl;

.field private synthetic zzabP:Lcom/google/android/gms/internal/zzig;

.field private synthetic zztH:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzakj;Landroid/content/Context;Lcom/google/android/gms/internal/zziv;ZZLcom/google/android/gms/internal/zzcu;Lcom/google/android/gms/internal/zzajd;Lcom/google/android/gms/internal/zznb;Lcom/google/android/gms/ads/internal/zzbl;Lcom/google/android/gms/ads/internal/zzv;Lcom/google/android/gms/internal/zzig;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzakk;->zztH:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzakk;->zzAI:Lcom/google/android/gms/internal/zziv;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzakk;->zzabL:Z

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzakk;->zzabM:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/zzakk;->zzLh:Lcom/google/android/gms/internal/zzcu;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzakk;->zzKQ:Lcom/google/android/gms/internal/zzajd;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzakk;->zzabN:Lcom/google/android/gms/internal/zznb;

    iput-object p9, p0, Lcom/google/android/gms/internal/zzakk;->zzabO:Lcom/google/android/gms/ads/internal/zzbl;

    iput-object p10, p0, Lcom/google/android/gms/internal/zzakk;->zzKS:Lcom/google/android/gms/ads/internal/zzv;

    iput-object p11, p0, Lcom/google/android/gms/internal/zzakk;->zzabP:Lcom/google/android/gms/internal/zzig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v10, Lcom/google/android/gms/internal/zzakm;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakk;->zztH:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakk;->zzAI:Lcom/google/android/gms/internal/zziv;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzakk;->zzabL:Z

    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzakk;->zzabM:Z

    iget-object v4, p0, Lcom/google/android/gms/internal/zzakk;->zzLh:Lcom/google/android/gms/internal/zzcu;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzakk;->zzKQ:Lcom/google/android/gms/internal/zzajd;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzakk;->zzabN:Lcom/google/android/gms/internal/zznb;

    iget-object v7, p0, Lcom/google/android/gms/internal/zzakk;->zzabO:Lcom/google/android/gms/ads/internal/zzbl;

    iget-object v8, p0, Lcom/google/android/gms/internal/zzakk;->zzKS:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v9, p0, Lcom/google/android/gms/internal/zzakk;->zzabP:Lcom/google/android/gms/internal/zzig;

    invoke-static/range {v0 .. v9}, Lcom/google/android/gms/internal/zzakn;->zzb(Landroid/content/Context;Lcom/google/android/gms/internal/zziv;ZZLcom/google/android/gms/internal/zzcu;Lcom/google/android/gms/internal/zzajd;Lcom/google/android/gms/internal/zznb;Lcom/google/android/gms/ads/internal/zzbl;Lcom/google/android/gms/ads/internal/zzv;Lcom/google/android/gms/internal/zzig;)Lcom/google/android/gms/internal/zzakn;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/google/android/gms/internal/zzakm;-><init>(Lcom/google/android/gms/internal/zzajz;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbB()Lcom/google/android/gms/internal/zzahd;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzakk;->zzabM:Z

    invoke-virtual {v0, v10, v1}, Lcom/google/android/gms/internal/zzahd;->zzb(Lcom/google/android/gms/internal/zzajz;Z)Lcom/google/android/gms/internal/zzaka;

    move-result-object v0

    invoke-interface {v10, v0}, Lcom/google/android/gms/internal/zzajz;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbB()Lcom/google/android/gms/internal/zzahd;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/zzahd;->zzm(Lcom/google/android/gms/internal/zzajz;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-interface {v10, v0}, Lcom/google/android/gms/internal/zzajz;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-object v10
.end method
