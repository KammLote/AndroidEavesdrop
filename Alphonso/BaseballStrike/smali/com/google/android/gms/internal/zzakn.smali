.class final Lcom/google/android/gms/internal/zzakn;
.super Landroid/webkit/WebView;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/webkit/DownloadListener;
.implements Lcom/google/android/gms/internal/zzajz;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzm;
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final zzIe:Lcom/google/android/gms/internal/zzcu;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private zzNY:I

.field private zzNZ:I

.field private zzOb:I

.field private zzOc:I

.field private zzQx:Ljava/lang/String;

.field private zzQy:Lcom/google/android/gms/internal/zzmz;

.field private zzYA:Ljava/lang/Boolean;

.field private final zzabS:Lcom/google/android/gms/internal/zzakq;

.field private final zzabT:Lcom/google/android/gms/ads/internal/zzbl;

.field private zzabU:Lcom/google/android/gms/internal/zzaka;

.field private zzabV:Lcom/google/android/gms/ads/internal/overlay/zzm;

.field private zzabW:Z

.field private zzabX:Z

.field private zzabY:Z

.field private zzabZ:Z

.field private zzaca:I

.field private zzacb:Z

.field private zzacc:Z

.field private zzacd:Lcom/google/android/gms/internal/zzakr;

.field private zzace:Z

.field private zzacf:Z

.field private zzacg:Lcom/google/android/gms/internal/zznw;

.field private zzach:I

.field private zzaci:I

.field private zzacj:Lcom/google/android/gms/internal/zzmz;

.field private zzack:Lcom/google/android/gms/internal/zzmz;

.field private zzacl:Lcom/google/android/gms/internal/zzna;

.field private zzacm:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private zzacn:Lcom/google/android/gms/ads/internal/overlay/zzm;

.field private zzaco:Z

.field private zzacp:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzsb;",
            ">;"
        }
    .end annotation
.end field

.field private final zzacq:Lcom/google/android/gms/internal/zzig;

.field private final zzsU:Lcom/google/android/gms/ads/internal/zzv;

.field private final zztY:Lcom/google/android/gms/internal/zzajd;

.field private zzvb:Lcom/google/android/gms/internal/zziv;

.field private zzwE:Lcom/google/android/gms/internal/zzaiw;

.field private final zzwT:Landroid/view/WindowManager;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzakq;Lcom/google/android/gms/internal/zziv;ZZLcom/google/android/gms/internal/zzcu;Lcom/google/android/gms/internal/zzajd;Lcom/google/android/gms/internal/zznb;Lcom/google/android/gms/ads/internal/zzbl;Lcom/google/android/gms/ads/internal/zzv;Lcom/google/android/gms/internal/zzig;)V
    .locals 5
    .param p5    # Lcom/google/android/gms/internal/zzcu;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzakn;->mLock:Ljava/lang/Object;

    iput-boolean v4, p0, Lcom/google/android/gms/internal/zzakn;->zzacb:Z

    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzakn;->zzacc:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzQx:Ljava/lang/String;

    iput v1, p0, Lcom/google/android/gms/internal/zzakn;->zzNZ:I

    iput v1, p0, Lcom/google/android/gms/internal/zzakn;->zzNY:I

    iput v1, p0, Lcom/google/android/gms/internal/zzakn;->zzOb:I

    iput v1, p0, Lcom/google/android/gms/internal/zzakn;->zzOc:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzakn;->zzabS:Lcom/google/android/gms/internal/zzakq;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzakn;->zzvb:Lcom/google/android/gms/internal/zziv;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzakn;->zzabY:Z

    iput v1, p0, Lcom/google/android/gms/internal/zzakn;->zzaca:I

    iput-object p5, p0, Lcom/google/android/gms/internal/zzakn;->zzIe:Lcom/google/android/gms/internal/zzcu;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzakn;->zztY:Lcom/google/android/gms/internal/zzajd;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzakn;->zzabT:Lcom/google/android/gms/ads/internal/zzbl;

    iput-object p9, p0, Lcom/google/android/gms/internal/zzakn;->zzsU:Lcom/google/android/gms/ads/internal/zzv;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzakn;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzwT:Landroid/view/WindowManager;

    iput-object p10, p0, Lcom/google/android/gms/internal/zzakn;->zzacq:Lcom/google/android/gms/internal/zzig;

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/zzakn;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzakn;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagy;

    move-result-object v1

    iget-object v2, p6, Lcom/google/android/gms/internal/zzajd;->zzaR:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/zzagy;->zzs(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbB()Lcom/google/android/gms/internal/zzahd;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzakn;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzahd;->zza(Landroid/content/Context;Landroid/webkit/WebSettings;)Z

    invoke-virtual {p0, p0}, Lcom/google/android/gms/internal/zzakn;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzakn;->zzjd()V

    invoke-static {}, Lcom/google/android/gms/common/util/zzq;->zzsa()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzaku;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzaku;-><init>(Lcom/google/android/gms/internal/zzajz;)V

    const-string v1, "googleAdsJsInterface"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzakn;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzakn;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v0, "accessibilityTraversal"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzakn;->removeJavascriptInterface(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzaiw;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakn;->zzabS:Lcom/google/android/gms/internal/zzakq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzakq;->zzis()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p0, v2}, Lcom/google/android/gms/internal/zzaiw;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzwE:Lcom/google/android/gms/internal/zzaiw;

    invoke-direct {p0, p7}, Lcom/google/android/gms/internal/zzakn;->zzd(Lcom/google/android/gms/internal/zznb;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbB()Lcom/google/android/gms/internal/zzahd;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzahd;->zzR(Landroid/content/Context;)V

    return-void

    :catch_0
    move-exception v1

    const-string v2, "Unable to enable Javascript."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzafq;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private final zzF(Z)V
    .locals 3

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "isVisible"

    if-eqz p1, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "onAdVisibilityChanged"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzakn;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzakn;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzakn;->zzaci:I

    return p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzakn;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method private final zza(Ljava/lang/Boolean;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakn;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzakn;->zzYA:Ljava/lang/Boolean;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbD()Lcom/google/android/gms/internal/zzafj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzafj;->zza(Ljava/lang/Boolean;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private final zzaW(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakn;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzakn;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzakn;->loadUrl(Ljava/lang/String;)V

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    const-string v0, "The webview is destroyed. Ignoring action."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafq;->zzaT(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final zzaX(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/google/android/gms/common/util/zzq;->zzsc()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzakn;->zzhw()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakn;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbD()Lcom/google/android/gms/internal/zzafj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzafj;->zzhw()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzYA:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzYA:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    const-string v0, "(function(){})()"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/zzakn;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzakn;->zza(Ljava/lang/Boolean;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzakn;->zzhw()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakn;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzakn;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzakn;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :goto_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzakn;->zza(Ljava/lang/Boolean;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_2
    :try_start_5
    const-string v0, "The webview is destroyed. Ignoring action."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafq;->zzaT(Ljava/lang/String;)V

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :cond_3
    const-string v1, "javascript:"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzakn;->zzaW(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const-string v1, "javascript:"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzakn;->zzaW(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzakn;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzakn;->zzaci:I

    return v0
.end method

.method static zzb(Landroid/content/Context;Lcom/google/android/gms/internal/zziv;ZZLcom/google/android/gms/internal/zzcu;Lcom/google/android/gms/internal/zzajd;Lcom/google/android/gms/internal/zznb;Lcom/google/android/gms/ads/internal/zzbl;Lcom/google/android/gms/ads/internal/zzv;Lcom/google/android/gms/internal/zzig;)Lcom/google/android/gms/internal/zzakn;
    .locals 11
    .param p4    # Lcom/google/android/gms/internal/zzcu;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    new-instance v1, Lcom/google/android/gms/internal/zzakq;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzakq;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/internal/zzakn;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/zzakn;-><init>(Lcom/google/android/gms/internal/zzakq;Lcom/google/android/gms/internal/zziv;ZZLcom/google/android/gms/internal/zzcu;Lcom/google/android/gms/internal/zzajd;Lcom/google/android/gms/internal/zznb;Lcom/google/android/gms/ads/internal/zzbl;Lcom/google/android/gms/ads/internal/zzv;Lcom/google/android/gms/internal/zzig;)V

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzakn;)V
    .locals 0

    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method private final zzd(Lcom/google/android/gms/internal/zznb;)V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzakn;->zzjg()V

    new-instance v0, Lcom/google/android/gms/internal/zzna;

    new-instance v1, Lcom/google/android/gms/internal/zznb;

    const/4 v2, 0x1

    const-string v3, "make_wv"

    iget-object v4, p0, Lcom/google/android/gms/internal/zzakn;->zzvb:Lcom/google/android/gms/internal/zziv;

    iget-object v4, v4, Lcom/google/android/gms/internal/zziv;->zzAu:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/zznb;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzna;-><init>(Lcom/google/android/gms/internal/zznb;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzacl:Lcom/google/android/gms/internal/zzna;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzacl:Lcom/google/android/gms/internal/zzna;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzna;->zzdR()Lcom/google/android/gms/internal/zznb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zznb;->zzc(Lcom/google/android/gms/internal/zznb;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzacl:Lcom/google/android/gms/internal/zzna;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzna;->zzdR()Lcom/google/android/gms/internal/zznb;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzmu;->zzb(Lcom/google/android/gms/internal/zznb;)Lcom/google/android/gms/internal/zzmz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzQy:Lcom/google/android/gms/internal/zzmz;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzacl:Lcom/google/android/gms/internal/zzna;

    const-string v1, "native:view_create"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzakn;->zzQy:Lcom/google/android/gms/internal/zzmz;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzna;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzmz;)V

    iput-object v5, p0, Lcom/google/android/gms/internal/zzakn;->zzack:Lcom/google/android/gms/internal/zzmz;

    iput-object v5, p0, Lcom/google/android/gms/internal/zzakn;->zzacj:Lcom/google/android/gms/internal/zzmz;

    return-void
.end method

.method private final zzhI()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakn;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzakn;->zzaco:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzakn;->zzaco:Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbD()Lcom/google/android/gms/internal/zzafj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzafj;->zzhI()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final zzhw()Ljava/lang/Boolean;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakn;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzYA:Ljava/lang/Boolean;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final zzjb()Z
    .locals 8

    const/4 v5, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakn;->zzabU:Lcom/google/android/gms/internal/zzaka;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaka;->zzcn()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakn;->zzabU:Lcom/google/android/gms/internal/zzaka;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaka;->zziP()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagy;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakn;->zzwT:Landroid/view/WindowManager;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzagy;->zza(Landroid/view/WindowManager;)Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/internal/zzji;->zzds()Lcom/google/android/gms/internal/zzaix;

    iget v1, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v6, v1}, Lcom/google/android/gms/internal/zzaix;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v1

    invoke-static {}, Lcom/google/android/gms/internal/zzji;->zzds()Lcom/google/android/gms/internal/zzaix;

    iget v2, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v6, v2}, Lcom/google/android/gms/internal/zzaix;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzakn;->zzabS:Lcom/google/android/gms/internal/zzakq;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzakq;->zzis()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    if-nez v4, :cond_5

    :cond_2
    move v4, v2

    move v3, v1

    :goto_1
    iget v7, p0, Lcom/google/android/gms/internal/zzakn;->zzNY:I

    if-ne v7, v1, :cond_3

    iget v7, p0, Lcom/google/android/gms/internal/zzakn;->zzNZ:I

    if-ne v7, v2, :cond_3

    iget v7, p0, Lcom/google/android/gms/internal/zzakn;->zzOb:I

    if-ne v7, v3, :cond_3

    iget v7, p0, Lcom/google/android/gms/internal/zzakn;->zzOc:I

    if-eq v7, v4, :cond_0

    :cond_3
    iget v7, p0, Lcom/google/android/gms/internal/zzakn;->zzNY:I

    if-ne v7, v1, :cond_4

    iget v7, p0, Lcom/google/android/gms/internal/zzakn;->zzNZ:I

    if-eq v7, v2, :cond_6

    :cond_4
    move v7, v5

    :goto_2
    iput v1, p0, Lcom/google/android/gms/internal/zzakn;->zzNY:I

    iput v2, p0, Lcom/google/android/gms/internal/zzakn;->zzNZ:I

    iput v3, p0, Lcom/google/android/gms/internal/zzakn;->zzOb:I

    iput v4, p0, Lcom/google/android/gms/internal/zzakn;->zzOc:I

    new-instance v0, Lcom/google/android/gms/internal/zzwt;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzwt;-><init>(Lcom/google/android/gms/internal/zzajz;)V

    iget v5, v6, Landroid/util/DisplayMetrics;->density:F

    iget-object v6, p0, Lcom/google/android/gms/internal/zzakn;->zzwT:Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/zzwt;->zza(IIIIFI)V

    move v0, v7

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagy;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzagy;->zzf(Landroid/app/Activity;)[I

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/zzji;->zzds()Lcom/google/android/gms/internal/zzaix;

    aget v3, v4, v0

    invoke-static {v6, v3}, Lcom/google/android/gms/internal/zzaix;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v3

    invoke-static {}, Lcom/google/android/gms/internal/zzji;->zzds()Lcom/google/android/gms/internal/zzaix;

    aget v4, v4, v5

    invoke-static {v6, v4}, Lcom/google/android/gms/internal/zzaix;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v4

    goto :goto_1

    :cond_6
    move v7, v0

    goto :goto_2
.end method

.method private final zzjc()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzacl:Lcom/google/android/gms/internal/zzna;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzna;->zzdR()Lcom/google/android/gms/internal/zznb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakn;->zzQy:Lcom/google/android/gms/internal/zzmz;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "aeh2"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzmu;->zza(Lcom/google/android/gms/internal/zznb;Lcom/google/android/gms/internal/zzmz;[Ljava/lang/String;)Z

    return-void
.end method

.method private final zzjd()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakn;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzakn;->zzabY:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzvb:Lcom/google/android/gms/internal/zziv;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zziv;->zzAv:Z

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "Enabling hardware acceleration on an overlay."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafq;->zzaC(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzakn;->zzje()V

    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v0, v2, :cond_3

    const-string v0, "Disabling hardware acceleration on an AdView."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafq;->zzaC(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzakn;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzakn;->zzabZ:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbB()Lcom/google/android/gms/internal/zzahd;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzahd;->zzr(Landroid/view/View;)Z

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzakn;->zzabZ:Z

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_3
    :try_start_3
    const-string v0, "Enabling hardware acceleration on an AdView."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafq;->zzaC(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzakn;->zzje()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0
.end method

.method private final zzje()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakn;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzakn;->zzabZ:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbB()Lcom/google/android/gms/internal/zzahd;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzahd;->zzq(Landroid/view/View;)Z

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzakn;->zzabZ:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final zzjf()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakn;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzacp:Ljava/util/Map;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final zzjg()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzacl:Lcom/google/android/gms/internal/zzna;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzacl:Lcom/google/android/gms/internal/zzna;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzna;->zzdR()Lcom/google/android/gms/internal/zznb;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbD()Lcom/google/android/gms/internal/zzafj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzafj;->zzhr()Lcom/google/android/gms/internal/zzmr;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbD()Lcom/google/android/gms/internal/zzafj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzafj;->zzhr()Lcom/google/android/gms/internal/zzmr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzmr;->zza(Lcom/google/android/gms/internal/zznb;)Z

    goto :goto_0
.end method


# virtual methods
.method public final destroy()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakn;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzakn;->zzjg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzwE:Lcom/google/android/gms/internal/zzaiw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaiw;->zzih()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzabV:Lcom/google/android/gms/ads/internal/overlay/zzm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzabV:Lcom/google/android/gms/ads/internal/overlay/zzm;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzm;->close()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzabV:Lcom/google/android/gms/ads/internal/overlay/zzm;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzm;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzabV:Lcom/google/android/gms/ads/internal/overlay/zzm;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzabU:Lcom/google/android/gms/internal/zzaka;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaka;->reset()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzakn;->zzabX:Z

    if-eqz v0, :cond_1

    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbW()Lcom/google/android/gms/internal/zzsa;

    invoke-static {p0}, Lcom/google/android/gms/internal/zzsa;->zze(Lcom/google/android/gms/internal/zzajz;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzakn;->zzjf()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzakn;->zzabX:Z

    const-string v0, "Initiating WebView self destruct sequence in 3..."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafq;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzabU:Lcom/google/android/gms/internal/zzaka;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaka;->zziT()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakn;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzakn;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "The webview is destroyed. Ignoring action."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafq;->zzaT(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->mLock:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakn;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzakn;->zzabX:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzabU:Lcom/google/android/gms/internal/zzaka;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaka;->reset()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbW()Lcom/google/android/gms/internal/zzsa;

    invoke-static {p0}, Lcom/google/android/gms/internal/zzsa;->zze(Lcom/google/android/gms/internal/zzajz;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzakn;->zzjf()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzakn;->zzhI()V

    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final getRequestId()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakn;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzQx:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getRequestedOrientation()I
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakn;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/zzakn;->zzaca:I

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public final getWebView()Landroid/webkit/WebView;
    .locals 0

    return-object p0
.end method

.method public final isDestroyed()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakn;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzakn;->zzabX:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakn;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzakn;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    const-string v0, "The webview is destroyed. Ignoring action."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafq;->zzaT(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakn;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzakn;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    const-string v0, "The webview is destroyed. Ignoring action."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafq;->zzaT(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final loadUrl(Ljava/lang/String;)V
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakn;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzakn;->isDestroyed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :try_start_1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbD()Lcom/google/android/gms/internal/zzafj;

    move-result-object v2

    const-string v3, "AdWebViewImpl.loadUrl"

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/zzafj;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v2, "Could not call loadUrl. "

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzafq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    const-string v0, "The webview is destroyed. Ignoring action."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafq;->zzaT(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method protected final onAttachedToWindow()V
    .locals 4

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzakn;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzakn;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakn;->zzwE:Lcom/google/android/gms/internal/zzaiw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaiw;->onAttachedToWindow()V

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzakn;->zzace:Z

    iget-object v3, p0, Lcom/google/android/gms/internal/zzakn;->zzabU:Lcom/google/android/gms/internal/zzaka;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/internal/zzakn;->zzabU:Lcom/google/android/gms/internal/zzaka;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzaka;->zziP()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzakn;->zzacf:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakn;->zzabU:Lcom/google/android/gms/internal/zzaka;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaka;->zziQ()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbX()Lcom/google/android/gms/internal/zzaju;

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/zzaju;->zza(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzakn;->zzabU:Lcom/google/android/gms/internal/zzaka;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaka;->zziR()Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbX()Lcom/google/android/gms/internal/zzaju;

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/zzaju;->zza(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzakn;->zzacf:Z

    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzakn;->zzjb()Z

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzakn;->zzF(Z)V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method protected final onDetachedFromWindow()V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakn;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzakn;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzwE:Lcom/google/android/gms/internal/zzaiw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaiw;->onDetachedFromWindow()V

    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzakn;->zzacf:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzabU:Lcom/google/android/gms/internal/zzaka;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzabU:Lcom/google/android/gms/internal/zzaka;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaka;->zziP()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzakn;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzakn;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzabU:Lcom/google/android/gms/internal/zzaka;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaka;->zziQ()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbB()Lcom/google/android/gms/internal/zzahd;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzakn;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/zzahd;->zza(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzabU:Lcom/google/android/gms/internal/zzaka;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaka;->zziR()Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzakn;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzakn;->zzacf:Z

    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/zzakn;->zzF(Z)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagy;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzakn;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzagy;->zzb(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x33

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Couldn\'t find an Activity to view url/mimetype: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafq;->zzaC(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzakn;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzakn;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzabU:Lcom/google/android/gms/internal/zzaka;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzabU:Lcom/google/android/gms/internal/zzaka;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaka;->zzja()Lcom/google/android/gms/internal/zzaki;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzabU:Lcom/google/android/gms/internal/zzaka;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaka;->zzja()Lcom/google/android/gms/internal/zzaki;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaki;->zzaS()V

    goto :goto_0
.end method

.method public final onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/google/android/gms/internal/zzmo;->zzDH:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    cmpl-float v2, v0, v4

    if-lez v2, :cond_0

    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/zzakn;->canScrollVertically(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    cmpg-float v0, v0, v4

    if-gez v0, :cond_1

    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/zzakn;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    cmpl-float v0, v1, v4

    if-lez v0, :cond_2

    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/zzakn;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    cmpg-float v0, v1, v4

    if-gez v0, :cond_4

    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/zzakn;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_4
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public final onGlobalLayout()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzakn;->zzjb()Z

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzakn;->zziu()Lcom/google/android/gms/ads/internal/overlay/zzm;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzfO()V

    :cond_0
    return-void
.end method

.method protected final onMeasure(II)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    const v0, 0x7fffffff

    const/high16 v8, 0x40000000    # 2.0f

    const/16 v7, 0x8

    const/high16 v6, -0x80000000

    iget-object v4, p0, Lcom/google/android/gms/internal/zzakn;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzakn;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzakn;->setMeasuredDimension(II)V

    monitor-exit v4

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzakn;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzakn;->zzabY:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakn;->zzvb:Lcom/google/android/gms/internal/zziv;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/zziv;->zzAx:Z

    if-eqz v1, :cond_2

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzakn;->zzvb:Lcom/google/android/gms/internal/zziv;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/zziv;->zzAy:Z

    if-eqz v1, :cond_5

    sget-object v0, Lcom/google/android/gms/internal/zzmo;->zzFF:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/google/android/gms/common/util/zzq;->zzsa()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V

    monitor-exit v4

    goto :goto_0

    :cond_4
    const-string v0, "/contentHeight"

    new-instance v1, Lcom/google/android/gms/internal/zzako;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzako;-><init>(Lcom/google/android/gms/internal/zzakn;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzakn;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string v0, "(function() {  var height = -1;  if (document.body) {    height = document.body.offsetHeight;  } else if (document.documentElement) {    height = document.documentElement.offsetHeight;  }  var url = \'gmsg://mobileads.google.com/contentHeight?\';  url += \'height=\' + height;  try {    window.googleAdsJsInterface.notify(url);  } catch (e) {    var frame = document.getElementById(\'afma-notify-fluid\');    if (!frame) {      frame = document.createElement(\'IFRAME\');      frame.id = \'afma-notify-fluid\';      frame.style.display = \'none\';      var body = document.body || document.documentElement;      body.appendChild(frame);    }    frame.src = url;  }})();"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzakn;->zzaX(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzabS:Lcom/google/android/gms/internal/zzakq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzakq;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/zzakn;->zzaci:I

    packed-switch v2, :pswitch_data_0

    iget v2, p0, Lcom/google/android/gms/internal/zzakn;->zzaci:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzakn;->setMeasuredDimension(II)V

    monitor-exit v4

    goto :goto_0

    :pswitch_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/zzakn;->zzvb:Lcom/google/android/gms/internal/zziv;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/zziv;->zzAv:Z

    if-eqz v1, :cond_6

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakn;->zzwT:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzakn;->setMeasuredDimension(II)V

    monitor-exit v4

    goto/16 :goto_0

    :cond_6
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    if-eq v2, v6, :cond_7

    if-ne v2, v8, :cond_e

    :cond_7
    move v2, v3

    :goto_2
    if-eq v5, v6, :cond_8

    if-ne v5, v8, :cond_9

    :cond_8
    move v0, v1

    :cond_9
    iget-object v5, p0, Lcom/google/android/gms/internal/zzakn;->zzvb:Lcom/google/android/gms/internal/zziv;

    iget v5, v5, Lcom/google/android/gms/internal/zziv;->widthPixels:I

    if-gt v5, v2, :cond_a

    iget-object v2, p0, Lcom/google/android/gms/internal/zzakn;->zzvb:Lcom/google/android/gms/internal/zziv;

    iget v2, v2, Lcom/google/android/gms/internal/zziv;->heightPixels:I

    if-le v2, v0, :cond_c

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzabS:Lcom/google/android/gms/internal/zzakq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzakq;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iget-object v2, p0, Lcom/google/android/gms/internal/zzakn;->zzvb:Lcom/google/android/gms/internal/zziv;

    iget v2, v2, Lcom/google/android/gms/internal/zziv;->widthPixels:I

    int-to-float v2, v2

    div-float/2addr v2, v0

    float-to-int v2, v2

    iget-object v5, p0, Lcom/google/android/gms/internal/zzakn;->zzvb:Lcom/google/android/gms/internal/zziv;

    iget v5, v5, Lcom/google/android/gms/internal/zziv;->heightPixels:I

    int-to-float v5, v5

    div-float/2addr v5, v0

    float-to-int v5, v5

    int-to-float v3, v3

    div-float/2addr v3, v0

    float-to-int v3, v3

    int-to-float v1, v1

    div-float v0, v1, v0

    float-to-int v0, v0

    const/16 v1, 0x67

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Not enough space to show ad. Needs "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dp, but only has "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dp."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafq;->zzaT(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzakn;->getVisibility()I

    move-result v0

    if-eq v0, v7, :cond_b

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzakn;->setVisibility(I)V

    :cond_b
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzakn;->setMeasuredDimension(II)V

    :goto_3
    monitor-exit v4

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzakn;->getVisibility()I

    move-result v0

    if-eq v0, v7, :cond_d

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzakn;->setVisibility(I)V

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzvb:Lcom/google/android/gms/internal/zziv;

    iget v0, v0, Lcom/google/android/gms/internal/zziv;->widthPixels:I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakn;->zzvb:Lcom/google/android/gms/internal/zziv;

    iget v1, v1, Lcom/google/android/gms/internal/zziv;->heightPixels:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzakn;->setMeasuredDimension(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :cond_e
    move v2, v0

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final onPause()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzakn;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->onPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not pause webview."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzafq;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onResume()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzakn;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->onResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not resume webview."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzafq;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzabU:Lcom/google/android/gms/internal/zzaka;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaka;->zziP()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakn;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzacg:Lcom/google/android/gms/internal/zznw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzacg:Lcom/google/android/gms/internal/zznw;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zznw;->zzc(Landroid/view/MotionEvent;)V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzakn;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzIe:Lcom/google/android/gms/internal/zzcu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzIe:Lcom/google/android/gms/internal/zzcu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzcu;->zza(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_3
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzabS:Lcom/google/android/gms/internal/zzakq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzakq;->setBaseContext(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzwE:Lcom/google/android/gms/internal/zzaiw;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakn;->zzabS:Lcom/google/android/gms/internal/zzakq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzakq;->zzis()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaiw;->zzi(Landroid/app/Activity;)V

    return-void
.end method

.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzacm:Ljava/lang/ref/WeakReference;

    invoke-super {p0, p1}, Landroid/webkit/WebView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setRequestedOrientation(I)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakn;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput p1, p0, Lcom/google/android/gms/internal/zzakn;->zzaca:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzabV:Lcom/google/android/gms/ads/internal/overlay/zzm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzabV:Lcom/google/android/gms/ads/internal/overlay/zzm;

    iget v2, p0, Lcom/google/android/gms/internal/zzakn;->zzaca:I

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/overlay/zzm;->setRequestedOrientation(I)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    instance-of v0, p1, Lcom/google/android/gms/internal/zzaka;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/zzaka;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzakn;->zzabU:Lcom/google/android/gms/internal/zzaka;

    :cond_0
    return-void
.end method

.method public final stopLoading()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzakn;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->stopLoading()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not stop loading webview."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzafq;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final zzA(I)V
    .locals 5

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzacl:Lcom/google/android/gms/internal/zzna;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzna;->zzdR()Lcom/google/android/gms/internal/zznb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakn;->zzQy:Lcom/google/android/gms/internal/zzmz;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "aebb2"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzmu;->zza(Lcom/google/android/gms/internal/zznb;Lcom/google/android/gms/internal/zzmz;[Ljava/lang/String;)Z

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzakn;->zzjc()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzacl:Lcom/google/android/gms/internal/zzna;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzna;->zzdR()Lcom/google/android/gms/internal/zznb;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzacl:Lcom/google/android/gms/internal/zzna;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzna;->zzdR()Lcom/google/android/gms/internal/zznb;

    move-result-object v0

    const-string v1, "close_type"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zznb;->zzh(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "closetype"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "version"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzakn;->zztY:Lcom/google/android/gms/internal/zzajd;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzajd;->zzaR:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onhide"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzakn;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zzA(Z)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakn;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzakn;->zzabY:Z

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzakn;->zzabY:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzakn;->zzjd()V

    if-eqz v0, :cond_0

    new-instance v2, Lcom/google/android/gms/internal/zzwt;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzwt;-><init>(Lcom/google/android/gms/internal/zzajz;)V

    if-eqz p1, :cond_2

    const-string v0, "expanded"

    :goto_1
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzwt;->zzap(Ljava/lang/String;)V

    :cond_0
    monitor-exit v1

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-string v0, "default"

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzB(Z)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakn;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzabV:Lcom/google/android/gms/ads/internal/overlay/zzm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzabV:Lcom/google/android/gms/ads/internal/overlay/zzm;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzakn;->zzabU:Lcom/google/android/gms/internal/zzaka;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaka;->zzcn()Z

    move-result v2

    invoke-virtual {v0, v2, p1}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zza(ZZ)V

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzakn;->zzabW:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzC(Z)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakn;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzakn;->zzacb:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzD(Z)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakn;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v2, p0, Lcom/google/android/gms/internal/zzakn;->zzach:I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/zzakn;->zzach:I

    iget v0, p0, Lcom/google/android/gms/internal/zzakn;->zzach:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzabV:Lcom/google/android/gms/ads/internal/overlay/zzm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzabV:Lcom/google/android/gms/ads/internal/overlay/zzm;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzfR()V

    :cond_0
    monitor-exit v1

    return-void

    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zza(Landroid/content/Context;Lcom/google/android/gms/internal/zziv;Lcom/google/android/gms/internal/zznb;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakn;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzwE:Lcom/google/android/gms/internal/zzaiw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaiw;->zzih()V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzakn;->setContext(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzabV:Lcom/google/android/gms/ads/internal/overlay/zzm;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzakn;->zzvb:Lcom/google/android/gms/internal/zziv;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzakn;->zzabY:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzakn;->zzabW:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzQx:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzakn;->zzaca:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbB()Lcom/google/android/gms/internal/zzahd;

    invoke-static {p0}, Lcom/google/android/gms/internal/zzahd;->zzl(Lcom/google/android/gms/internal/zzajz;)Z

    const-string v0, "about:blank"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzakn;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzabU:Lcom/google/android/gms/internal/zzaka;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaka;->reset()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzakn;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzakn;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzakn;->zzacb:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzakn;->zzacc:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzacd:Lcom/google/android/gms/internal/zzakr;

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/zzakn;->zzd(Lcom/google/android/gms/internal/zznb;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzakn;->zzace:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzakn;->zzach:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbW()Lcom/google/android/gms/internal/zzsa;

    invoke-static {p0}, Lcom/google/android/gms/internal/zzsa;->zze(Lcom/google/android/gms/internal/zzajz;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzakn;->zzjf()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzakr;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakn;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzacd:Lcom/google/android/gms/internal/zzakr;

    if-eqz v0, :cond_0

    const-string v0, "Attempt to create multiple AdWebViewVideoControllers."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafq;->e(Ljava/lang/String;)V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzakn;->zzacd:Lcom/google/android/gms/internal/zzakr;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzgh;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakn;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzgh;->zzxU:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzakn;->zzace:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzgh;->zzxU:Z

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzakn;->zzF(Z)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zziv;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakn;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzakn;->zzvb:Lcom/google/android/gms/internal/zziv;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzakn;->requestLayout()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzabU:Lcom/google/android/gms/internal/zzaka;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzabU:Lcom/google/android/gms/internal/zzaka;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzaka;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    :cond_0
    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagy;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzagy;->zzj(Ljava/util/Map;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzakn;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "Could not convert parameters to JSON."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafq;->zzaT(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final zza(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    if-nez p2, :cond_0

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzakn;->zzi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final zzaJ()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakn;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzakn;->zzacc:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzabT:Lcom/google/android/gms/ads/internal/zzbl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzabT:Lcom/google/android/gms/ads/internal/zzbl;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/zzbl;->zzaJ()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzaK()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakn;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzakn;->zzacc:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzabT:Lcom/google/android/gms/ads/internal/zzbl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzabT:Lcom/google/android/gms/ads/internal/zzbl;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/zzbl;->zzaK()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzaU(Ljava/lang/String;)V
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakn;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbD()Lcom/google/android/gms/internal/zzafj;

    move-result-object v2

    const-string v3, "AdWebViewImpl.loadUrlUnsafe"

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/zzafj;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v2, "Could not call loadUrl. "

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzafq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final zzaV(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakn;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzakn;->zzQx:Ljava/lang/String;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzak()Lcom/google/android/gms/ads/internal/zzv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzsU:Lcom/google/android/gms/ads/internal/zzv;

    return-object v0
.end method

.method public final zzam()Lcom/google/android/gms/internal/zziv;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakn;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzvb:Lcom/google/android/gms/internal/zziv;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzb(Lcom/google/android/gms/ads/internal/overlay/zzm;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakn;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzakn;->zzabV:Lcom/google/android/gms/ads/internal/overlay/zzm;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/zznw;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakn;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzakn;->zzacg:Lcom/google/android/gms/internal/zznw;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzabU:Lcom/google/android/gms/internal/zzaka;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzabU:Lcom/google/android/gms/internal/zzaka;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzaka;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    :cond_0
    return-void
.end method

.method public final zzb(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 4

    if-nez p2, :cond_0

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(window.AFMA_ReceiveMessage || function() {})(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Dispatching AFMA event: "

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/zzafq;->zzaC(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzakn;->zzaX(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final zzc(Lcom/google/android/gms/ads/internal/overlay/zzm;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakn;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzakn;->zzacn:Lcom/google/android/gms/ads/internal/overlay/zzm;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzfP()V
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzacj:Lcom/google/android/gms/internal/zzmz;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzacl:Lcom/google/android/gms/internal/zzna;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzna;->zzdR()Lcom/google/android/gms/internal/zznb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakn;->zzQy:Lcom/google/android/gms/internal/zzmz;

    new-array v2, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "aes2"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzmu;->zza(Lcom/google/android/gms/internal/zznb;Lcom/google/android/gms/internal/zzmz;[Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzacl:Lcom/google/android/gms/internal/zzna;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzna;->zzdR()Lcom/google/android/gms/internal/zznb;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzmu;->zzb(Lcom/google/android/gms/internal/zznb;)Lcom/google/android/gms/internal/zzmz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzacj:Lcom/google/android/gms/internal/zzmz;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzacl:Lcom/google/android/gms/internal/zzna;

    const-string v1, "native:view_show"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzakn;->zzacj:Lcom/google/android/gms/internal/zzmz;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzna;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzmz;)V

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v5}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "version"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzakn;->zztY:Lcom/google/android/gms/internal/zzajd;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzajd;->zzaR:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onshow"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzakn;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zzi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzakn;->zzaX(Ljava/lang/String;)V

    return-void
.end method

.method public final zziA()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakn;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzakn;->zzabY:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zziB()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakn;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "Destroying WebView!"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafq;->v(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzakn;->zzhI()V

    sget-object v0, Lcom/google/android/gms/internal/zzagy;->zzZr:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/zzakp;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzakp;-><init>(Lcom/google/android/gms/internal/zzakn;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zziC()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakn;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzakn;->zzacb:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zziD()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakn;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzakn;->zzacc:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zziE()Lcom/google/android/gms/internal/zzajy;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zziF()Lcom/google/android/gms/internal/zzmz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzQy:Lcom/google/android/gms/internal/zzmz;

    return-object v0
.end method

.method public final zziG()Lcom/google/android/gms/internal/zzna;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzacl:Lcom/google/android/gms/internal/zzna;

    return-object v0
.end method

.method public final zziH()Lcom/google/android/gms/internal/zzakr;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakn;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzacd:Lcom/google/android/gms/internal/zzakr;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zziI()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakn;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/zzakn;->zzach:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zziJ()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzwE:Lcom/google/android/gms/internal/zzaiw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaiw;->zzig()V

    return-void
.end method

.method public final zziK()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzack:Lcom/google/android/gms/internal/zzmz;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzacl:Lcom/google/android/gms/internal/zzna;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzna;->zzdR()Lcom/google/android/gms/internal/zznb;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzmu;->zzb(Lcom/google/android/gms/internal/zznb;)Lcom/google/android/gms/internal/zzmz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzack:Lcom/google/android/gms/internal/zzmz;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzacl:Lcom/google/android/gms/internal/zzna;

    const-string v1, "native:view_load"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzakn;->zzack:Lcom/google/android/gms/internal/zzmz;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzna;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzmz;)V

    :cond_0
    return-void
.end method

.method public final zziL()Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzacm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public final zziM()Lcom/google/android/gms/internal/zznw;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakn;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzacg:Lcom/google/android/gms/internal/zznw;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zziN()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzakn;->setBackgroundColor(I)V

    return-void
.end method

.method public final zziq()V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzakn;->zzjc()V

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "version"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzakn;->zztY:Lcom/google/android/gms/internal/zzajd;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzajd;->zzaR:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onhide"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzakn;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zzir()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "app_muted"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagy;

    invoke-static {}, Lcom/google/android/gms/internal/zzagy;->zzbh()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "app_volume"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagy;

    invoke-static {}, Lcom/google/android/gms/internal/zzagy;->zzbf()F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "device_volume"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagy;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzakn;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzagy;->zzM(Landroid/content/Context;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "volume"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzakn;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zzis()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzabS:Lcom/google/android/gms/internal/zzakq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzakq;->zzis()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public final zzit()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzabS:Lcom/google/android/gms/internal/zzakq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzakq;->zzit()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final zziu()Lcom/google/android/gms/ads/internal/overlay/zzm;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakn;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzabV:Lcom/google/android/gms/ads/internal/overlay/zzm;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zziv()Lcom/google/android/gms/ads/internal/overlay/zzm;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakn;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzacn:Lcom/google/android/gms/ads/internal/overlay/zzm;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zziw()Lcom/google/android/gms/internal/zzaka;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzabU:Lcom/google/android/gms/internal/zzaka;

    return-object v0
.end method

.method public final zzix()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakn;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzakn;->zzabW:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zziy()Lcom/google/android/gms/internal/zzcu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zzIe:Lcom/google/android/gms/internal/zzcu;

    return-object v0
.end method

.method public final zziz()Lcom/google/android/gms/internal/zzajd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakn;->zztY:Lcom/google/android/gms/internal/zzajd;

    return-object v0
.end method
