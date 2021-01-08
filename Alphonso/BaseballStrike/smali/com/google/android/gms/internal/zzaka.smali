.class public Lcom/google/android/gms/internal/zzaka;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzm;
.end annotation


# static fields
.field private static final zzabn:[Ljava/lang/String;

.field private static final zzabo:[Ljava/lang/String;


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private zzIV:Lcom/google/android/gms/internal/zzqk;

.field private zzJE:Lcom/google/android/gms/internal/zzrm;

.field private zzJG:Lcom/google/android/gms/ads/internal/zzw;

.field private zzJH:Lcom/google/android/gms/internal/zzwj;

.field protected zzJJ:Lcom/google/android/gms/internal/zzajz;

.field private zzNH:Lcom/google/android/gms/internal/zzwu;

.field private final zzabA:Lcom/google/android/gms/internal/zzws;

.field private zzabB:Lcom/google/android/gms/internal/zzaki;

.field private zzabC:Z

.field private zzabD:Z

.field private zzabE:Z

.field private zzabF:I

.field private zzabG:Landroid/view/View$OnAttachStateChangeListener;

.field private final zzabp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzrd;",
            ">;>;"
        }
    .end annotation
.end field

.field private zzabq:Lcom/google/android/gms/ads/internal/overlay/zzw;

.field private zzabr:Lcom/google/android/gms/internal/zzake;

.field private zzabs:Lcom/google/android/gms/internal/zzakf;

.field private zzabt:Lcom/google/android/gms/internal/zzakg;

.field private zzabu:Z

.field private zzabv:Z

.field private zzabw:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private zzabx:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private zzaby:Z

.field private zzabz:Lcom/google/android/gms/ads/internal/overlay/zzag;

.field protected zztt:Lcom/google/android/gms/internal/zzaes;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private zzwK:Z

.field private zzzN:Lcom/google/android/gms/internal/zzim;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "UNKNOWN"

    aput-object v1, v0, v3

    const-string v1, "HOST_LOOKUP"

    aput-object v1, v0, v4

    const-string v1, "UNSUPPORTED_AUTH_SCHEME"

    aput-object v1, v0, v5

    const-string v1, "AUTHENTICATION"

    aput-object v1, v0, v6

    const-string v1, "PROXY_AUTHENTICATION"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "CONNECT"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "IO"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "TIMEOUT"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "REDIRECT_LOOP"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "UNSUPPORTED_SCHEME"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "FAILED_SSL_HANDSHAKE"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "BAD_URL"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "FILE"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "FILE_NOT_FOUND"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "TOO_MANY_REQUESTS"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/internal/zzaka;->zzabn:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "NOT_YET_VALID"

    aput-object v1, v0, v3

    const-string v1, "EXPIRED"

    aput-object v1, v0, v4

    const-string v1, "ID_MISMATCH"

    aput-object v1, v0, v5

    const-string v1, "UNTRUSTED"

    aput-object v1, v0, v6

    const-string v1, "DATE_INVALID"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "INVALID"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/internal/zzaka;->zzabo:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzajz;Z)V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/zzws;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzajz;->zzit()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzlz;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzajz;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzlz;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/internal/zzws;-><init>(Lcom/google/android/gms/internal/zzajz;Landroid/content/Context;Lcom/google/android/gms/internal/zzlz;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gms/internal/zzaka;-><init>(Lcom/google/android/gms/internal/zzajz;ZLcom/google/android/gms/internal/zzws;Lcom/google/android/gms/internal/zzwj;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzajz;ZLcom/google/android/gms/internal/zzws;Lcom/google/android/gms/internal/zzwj;)V
    .locals 1

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zzabp:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaka;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaka;->zzabu:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaka;->zzJJ:Lcom/google/android/gms/internal/zzajz;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzaka;->zzwK:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/zzaka;->zzabA:Lcom/google/android/gms/internal/zzws;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zzJH:Lcom/google/android/gms/internal/zzwj;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzaka;)Lcom/google/android/gms/internal/zzakg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zzabt:Lcom/google/android/gms/internal/zzakg;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzaka;Lcom/google/android/gms/internal/zzakg;)Lcom/google/android/gms/internal/zzakg;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zzabt:Lcom/google/android/gms/internal/zzakg;

    return-object v0
.end method

.method private final zza(Landroid/view/View;Lcom/google/android/gms/internal/zzaes;I)V
    .locals 4

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzaes;->zzgZ()Z

    move-result v0

    if-eqz v0, :cond_0

    if-lez p3, :cond_0

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/zzaes;->zzk(Landroid/view/View;)V

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzaes;->zzgZ()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzagy;->zzZr:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzakb;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzakb;-><init>(Lcom/google/android/gms/internal/zzaka;Landroid/view/View;Lcom/google/android/gms/internal/zzaes;I)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private final zza(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zzJH:Lcom/google/android/gms/internal/zzwj;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zzJH:Lcom/google/android/gms/internal/zzwj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzwj;->zzfC()Z

    move-result v0

    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbx()Lcom/google/android/gms/ads/internal/overlay/zzu;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaka;->zzJJ:Lcom/google/android/gms/internal/zzajz;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzajz;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v2, p1, v1}, Lcom/google/android/gms/ads/internal/overlay/zzu;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zztt:Lcom/google/android/gms/internal/zzaes;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->url:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzPd:Lcom/google/android/gms/ads/internal/overlay/zzc;

    if-eqz v1, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzPd:Lcom/google/android/gms/ads/internal/overlay/zzc;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/zzc;->url:Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaka;->zztt:Lcom/google/android/gms/internal/zzaes;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzaes;->zzaA(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzaka;Landroid/view/View;Lcom/google/android/gms/internal/zzaes;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzaka;->zza(Landroid/view/View;Lcom/google/android/gms/internal/zzaes;I)V

    return-void
.end method

.method private final zzc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    sget-object v0, Lcom/google/android/gms/internal/zzmo;->zzEy:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "err"

    invoke-virtual {v4, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "code"

    invoke-virtual {v4, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "host"

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagy;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaka;->zzJJ:Lcom/google/android/gms/internal/zzajz;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzajz;->zziz()Lcom/google/android/gms/internal/zzajd;

    move-result-object v1

    iget-object v2, v1, Lcom/google/android/gms/internal/zzajd;->zzaR:Ljava/lang/String;

    const-string v3, "gmob-apps"

    const/4 v5, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzagy;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method private final zzi(Landroid/net/Uri;)V
    .locals 7

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zzabp:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagy;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzagy;->zzg(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v3

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzafq;->zzz(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Received GMSG: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/zzafq;->v(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "  "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ": "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzafq;->v(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzrd;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaka;->zzJJ:Lcom/google/android/gms/internal/zzajz;

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/zzrd;->zza(Lcom/google/android/gms/internal/zzajz;Ljava/util/Map;)V

    goto :goto_2

    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x20

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "No GMSG handler found for GMSG: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafq;->v(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private final zziU()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zzabG:Landroid/view/View$OnAttachStateChangeListener;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zzJJ:Lcom/google/android/gms/internal/zzajz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzajz;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaka;->zzabG:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_0
.end method

.method private final zziZ()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zzabr:Lcom/google/android/gms/internal/zzake;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaka;->zzabD:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/zzaka;->zzabF:I

    if-lez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaka;->zzabE:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaka;->zzabr:Lcom/google/android/gms/internal/zzake;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaka;->zzJJ:Lcom/google/android/gms/internal/zzajz;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaka;->zzabE:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/zzake;->zza(Lcom/google/android/gms/internal/zzajz;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zzabr:Lcom/google/android/gms/internal/zzake;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zzJJ:Lcom/google/android/gms/internal/zzajz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzajz;->zziK()V

    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    const-string v1, "Loading resource: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/zzafq;->v(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "gmsg"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "mobileads.google.com"

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaka;->zzi(Landroid/net/Uri;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaka;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaka;->zzabC:Z

    if-eqz v0, :cond_0

    const-string v0, "Blank page loaded, 1..."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafq;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zzJJ:Lcom/google/android/gms/internal/zzajz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzajz;->zziB()V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaka;->zzabD:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zzabs:Lcom/google/android/gms/internal/zzakf;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zzabs:Lcom/google/android/gms/internal/zzakf;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaka;->zzJJ:Lcom/google/android/gms/internal/zzajz;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzakf;->zzj(Lcom/google/android/gms/internal/zzajz;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zzabs:Lcom/google/android/gms/internal/zzakf;

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaka;->zziZ()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-gez p2, :cond_0

    neg-int v0, p2

    add-int/lit8 v0, v0, -0x1

    sget-object v1, Lcom/google/android/gms/internal/zzaka;->zzabn:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzaka;->zzabn:[Ljava/lang/String;

    neg-int v1, p2

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaka;->zzJJ:Lcom/google/android/gms/internal/zzajz;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzajz;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "http_err"

    invoke-direct {p0, v1, v2, v0, p4}, Lcom/google/android/gms/internal/zzaka;->zzc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 4

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v0

    if-ltz v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/zzaka;->zzabo:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/zzaka;->zzabo:[Ljava/lang/String;

    aget-object v0, v1, v0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaka;->zzJJ:Lcom/google/android/gms/internal/zzajz;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzajz;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ssl_err"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbB()Lcom/google/android/gms/internal/zzahd;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/google/android/gms/internal/zzahd;->zza(Landroid/net/http/SslError;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/google/android/gms/internal/zzaka;->zzc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    return-void

    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final reset()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zztt:Lcom/google/android/gms/internal/zzaes;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zztt:Lcom/google/android/gms/internal/zzaes;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaes;->zzhb()V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzaka;->zztt:Lcom/google/android/gms/internal/zzaes;

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaka;->zziU()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaka;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zzabp:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zzzN:Lcom/google/android/gms/internal/zzim;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zzabq:Lcom/google/android/gms/ads/internal/overlay/zzw;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zzabr:Lcom/google/android/gms/internal/zzake;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zzabs:Lcom/google/android/gms/internal/zzakf;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zzIV:Lcom/google/android/gms/internal/zzqk;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaka;->zzabu:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaka;->zzwK:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaka;->zzabv:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaka;->zzaby:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zzabz:Lcom/google/android/gms/ads/internal/overlay/zzag;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zzabt:Lcom/google/android/gms/internal/zzakg;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zzJH:Lcom/google/android/gms/internal/zzwj;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zzJH:Lcom/google/android/gms/internal/zzwj;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzwj;->zzk(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zzJH:Lcom/google/android/gms/internal/zzwj;

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zzJJ:Lcom/google/android/gms/internal/zzajz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzajz;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/zzaey;->zzb(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagy;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaka;->zzJJ:Lcom/google/android/gms/internal/zzajz;

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzajz;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzaka;->zzJJ:Lcom/google/android/gms/internal/zzajz;

    invoke-interface {v4}, Lcom/google/android/gms/internal/zzajz;->zziz()Lcom/google/android/gms/internal/zzajd;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/internal/zzajd;->zzaR:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v1, v3, v4, v5, v0}, Lcom/google/android/gms/internal/zzagy;->zza(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;)V

    new-instance v1, Landroid/webkit/WebResourceResponse;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "encoding"

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, v3, v4, v0}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/internal/zzia;->zzB(Ljava/lang/String;)Lcom/google/android/gms/internal/zzia;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbE()Lcom/google/android/gms/internal/zzhs;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzhs;->zza(Lcom/google/android/gms/internal/zzia;)Lcom/google/android/gms/internal/zzhx;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzhx;->zzcY()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move-object v0, v2

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/webkit/WebResourceResponse;

    const-string v3, ""

    const-string v4, ""

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzhx;->zzcZ()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v3, v4, v1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbD()Lcom/google/android/gms/internal/zzafj;

    move-result-object v1

    const-string v3, "AdWebViewClient.shouldInterceptRequest"

    invoke-virtual {v1, v0, v3}, Lcom/google/android/gms/internal/zzafj;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0
.end method

.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_0
        0x55 -> :sswitch_0
        0x56 -> :sswitch_0
        0x57 -> :sswitch_0
        0x58 -> :sswitch_0
        0x59 -> :sswitch_0
        0x5a -> :sswitch_0
        0x5b -> :sswitch_0
        0x7e -> :sswitch_0
        0x7f -> :sswitch_0
        0x80 -> :sswitch_0
        0x81 -> :sswitch_0
        0x82 -> :sswitch_0
        0xde -> :sswitch_0
    .end sparse-switch
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v3, 0x0

    const-string v1, "AdWebView shouldOverrideUrlLoading: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/zzafq;->v(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "gmsg"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "mobileads.google.com"

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaka;->zzi(Landroid/net/Uri;)V

    :goto_1
    move v0, v8

    :goto_2
    return v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzaka;->zzabu:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaka;->zzJJ:Lcom/google/android/gms/internal/zzajz;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzajz;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    if-ne p1, v1, :cond_6

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "https"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_2
    move v1, v8

    :goto_3
    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zzzN:Lcom/google/android/gms/internal/zzim;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/google/android/gms/internal/zzmo;->zzDq:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zzzN:Lcom/google/android/gms/internal/zzim;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzim;->onAdClicked()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zztt:Lcom/google/android/gms/internal/zzaes;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zztt:Lcom/google/android/gms/internal/zzaes;

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/zzaes;->zzaA(Ljava/lang/String;)V

    :cond_3
    iput-object v3, p0, Lcom/google/android/gms/internal/zzaka;->zzzN:Lcom/google/android/gms/internal/zzim;

    :cond_4
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaka;->zzJJ:Lcom/google/android/gms/internal/zzajz;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzajz;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->willNotDraw()Z

    move-result v1

    if-nez v1, :cond_b

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaka;->zzJJ:Lcom/google/android/gms/internal/zzajz;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzajz;->zziy()Lcom/google/android/gms/internal/zzcu;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzcu;->zzc(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaka;->zzJJ:Lcom/google/android/gms/internal/zzajz;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzajz;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/internal/zzaka;->zzJJ:Lcom/google/android/gms/internal/zzajz;

    invoke-interface {v4}, Lcom/google/android/gms/internal/zzajz;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v0, v2, v4}, Lcom/google/android/gms/internal/zzcu;->zza(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;)Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzcv; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_7
    move-object v2, v0

    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zzJG:Lcom/google/android/gms/ads/internal/zzw;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zzJG:Lcom/google/android/gms/ads/internal/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzw;->zzaR()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_8
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzc;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzaka;->zza(Lcom/google/android/gms/ads/internal/overlay/zzc;)V

    goto/16 :goto_1

    :catch_0
    move-exception v1

    const-string v2, "Unable to append parameter to URL: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_5
    invoke-static {v1}, Lcom/google/android/gms/internal/zzafq;->zzaT(Ljava/lang/String;)V

    move-object v2, v0

    goto :goto_4

    :cond_9
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zzJG:Lcom/google/android/gms/ads/internal/zzw;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/internal/zzw;->zzt(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    const-string v1, "AdWebView unable to handle URL: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-static {v0}, Lcom/google/android/gms/internal/zzafq;->zzaT(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_c
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_6
.end method

.method public final zzE(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaka;->zzabu:Z

    return-void
.end method

.method public final zza(IIZ)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zzabA:Lcom/google/android/gms/internal/zzws;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzws;->zzc(II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zzJH:Lcom/google/android/gms/internal/zzwj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zzJH:Lcom/google/android/gms/internal/zzwj;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzwj;->zza(IIZ)V

    :cond_0
    return-void
.end method

.method public final zza(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaka;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaka;->zzabv:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zzJJ:Lcom/google/android/gms/internal/zzajz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzajz;->zziJ()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaka;->zzabw:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaka;->zzabx:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/ads/internal/overlay/zzc;)V
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zzJJ:Lcom/google/android/gms/internal/zzajz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzajz;->zziA()Z

    move-result v1

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaka;->zzJJ:Lcom/google/android/gms/internal/zzajz;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzajz;->zzam()Lcom/google/android/gms/internal/zziv;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/android/gms/internal/zziv;->zzAv:Z

    if-nez v2, :cond_0

    move-object v2, v3

    :goto_0
    if-eqz v1, :cond_1

    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/internal/zzaka;->zzabz:Lcom/google/android/gms/ads/internal/overlay/zzag;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaka;->zzJJ:Lcom/google/android/gms/internal/zzajz;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzajz;->zziz()Lcom/google/android/gms/internal/zzajd;

    move-result-object v5

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzc;Lcom/google/android/gms/internal/zzim;Lcom/google/android/gms/ads/internal/overlay/zzw;Lcom/google/android/gms/ads/internal/overlay/zzag;Lcom/google/android/gms/internal/zzajd;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaka;->zza(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaka;->zzzN:Lcom/google/android/gms/internal/zzim;

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/internal/zzaka;->zzabq:Lcom/google/android/gms/ads/internal/overlay/zzw;

    goto :goto_1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzake;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaka;->zzabr:Lcom/google/android/gms/internal/zzake;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzakf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaka;->zzabs:Lcom/google/android/gms/internal/zzakf;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzakg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaka;->zzabt:Lcom/google/android/gms/internal/zzakg;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzaki;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaka;->zzabB:Lcom/google/android/gms/internal/zzaki;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzim;Lcom/google/android/gms/ads/internal/overlay/zzw;Lcom/google/android/gms/internal/zzqk;Lcom/google/android/gms/ads/internal/overlay/zzag;ZLcom/google/android/gms/internal/zzrm;Lcom/google/android/gms/ads/internal/zzw;Lcom/google/android/gms/internal/zzwu;Lcom/google/android/gms/internal/zzaes;)V
    .locals 3
    .param p6    # Lcom/google/android/gms/internal/zzrm;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Lcom/google/android/gms/internal/zzaes;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p7, :cond_0

    new-instance p7, Lcom/google/android/gms/ads/internal/zzw;

    invoke-direct {p7, p9}, Lcom/google/android/gms/ads/internal/zzw;-><init>(Lcom/google/android/gms/internal/zzaes;)V

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzwj;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaka;->zzJJ:Lcom/google/android/gms/internal/zzajz;

    invoke-direct {v0, v1, p8}, Lcom/google/android/gms/internal/zzwj;-><init>(Lcom/google/android/gms/internal/zzajz;Lcom/google/android/gms/internal/zzwu;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zzJH:Lcom/google/android/gms/internal/zzwj;

    iput-object p9, p0, Lcom/google/android/gms/internal/zzaka;->zztt:Lcom/google/android/gms/internal/zzaes;

    const-string v0, "/appEvent"

    new-instance v1, Lcom/google/android/gms/internal/zzqj;

    invoke-direct {v1, p3}, Lcom/google/android/gms/internal/zzqj;-><init>(Lcom/google/android/gms/internal/zzqk;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzaka;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string v0, "/backButton"

    sget-object v1, Lcom/google/android/gms/internal/zzqn;->zzJg:Lcom/google/android/gms/internal/zzrd;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzaka;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string v0, "/refresh"

    sget-object v1, Lcom/google/android/gms/internal/zzqn;->zzJh:Lcom/google/android/gms/internal/zzrd;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzaka;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string v0, "/canOpenURLs"

    sget-object v1, Lcom/google/android/gms/internal/zzqn;->zzIX:Lcom/google/android/gms/internal/zzrd;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzaka;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string v0, "/canOpenIntents"

    sget-object v1, Lcom/google/android/gms/internal/zzqn;->zzIY:Lcom/google/android/gms/internal/zzrd;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzaka;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string v0, "/click"

    sget-object v1, Lcom/google/android/gms/internal/zzqn;->zzIZ:Lcom/google/android/gms/internal/zzrd;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzaka;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string v0, "/close"

    sget-object v1, Lcom/google/android/gms/internal/zzqn;->zzJa:Lcom/google/android/gms/internal/zzrd;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzaka;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string v0, "/customClose"

    sget-object v1, Lcom/google/android/gms/internal/zzqn;->zzJb:Lcom/google/android/gms/internal/zzrd;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzaka;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string v0, "/instrument"

    sget-object v1, Lcom/google/android/gms/internal/zzqn;->zzJm:Lcom/google/android/gms/internal/zzrd;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzaka;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string v0, "/delayPageLoaded"

    sget-object v1, Lcom/google/android/gms/internal/zzqn;->zzJo:Lcom/google/android/gms/internal/zzrd;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzaka;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string v0, "/delayPageClosed"

    sget-object v1, Lcom/google/android/gms/internal/zzqn;->zzJp:Lcom/google/android/gms/internal/zzrd;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzaka;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string v0, "/getLocationInfo"

    sget-object v1, Lcom/google/android/gms/internal/zzqn;->zzJq:Lcom/google/android/gms/internal/zzrd;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzaka;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string v0, "/httpTrack"

    sget-object v1, Lcom/google/android/gms/internal/zzqn;->zzJc:Lcom/google/android/gms/internal/zzrd;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzaka;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string v0, "/log"

    sget-object v1, Lcom/google/android/gms/internal/zzqn;->zzJd:Lcom/google/android/gms/internal/zzrd;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzaka;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string v0, "/mraid"

    new-instance v1, Lcom/google/android/gms/internal/zzrp;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaka;->zzJH:Lcom/google/android/gms/internal/zzwj;

    invoke-direct {v1, p7, v2}, Lcom/google/android/gms/internal/zzrp;-><init>(Lcom/google/android/gms/ads/internal/zzw;Lcom/google/android/gms/internal/zzwj;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzaka;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string v0, "/mraidLoaded"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaka;->zzabA:Lcom/google/android/gms/internal/zzws;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzaka;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string v0, "/open"

    new-instance v1, Lcom/google/android/gms/internal/zzrq;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaka;->zzJH:Lcom/google/android/gms/internal/zzwj;

    invoke-direct {v1, p7, v2}, Lcom/google/android/gms/internal/zzrq;-><init>(Lcom/google/android/gms/ads/internal/zzw;Lcom/google/android/gms/internal/zzwj;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzaka;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string v0, "/precache"

    sget-object v1, Lcom/google/android/gms/internal/zzqn;->zzJl:Lcom/google/android/gms/internal/zzrd;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzaka;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string v0, "/touch"

    sget-object v1, Lcom/google/android/gms/internal/zzqn;->zzJf:Lcom/google/android/gms/internal/zzrd;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzaka;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string v0, "/video"

    sget-object v1, Lcom/google/android/gms/internal/zzqn;->zzJi:Lcom/google/android/gms/internal/zzrd;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzaka;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string v0, "/videoMeta"

    sget-object v1, Lcom/google/android/gms/internal/zzqn;->zzJj:Lcom/google/android/gms/internal/zzrd;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzaka;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbY()Lcom/google/android/gms/internal/zzaev;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaka;->zzJJ:Lcom/google/android/gms/internal/zzajz;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzajz;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaev;->zzp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "/logScionEvent"

    sget-object v1, Lcom/google/android/gms/internal/zzqn;->zzJk:Lcom/google/android/gms/internal/zzrd;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzaka;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    :cond_1
    if-eqz p6, :cond_2

    const-string v0, "/setInterstitialProperties"

    new-instance v1, Lcom/google/android/gms/internal/zzrl;

    invoke-direct {v1, p6}, Lcom/google/android/gms/internal/zzrl;-><init>(Lcom/google/android/gms/internal/zzrm;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzaka;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    :cond_2
    iput-object p1, p0, Lcom/google/android/gms/internal/zzaka;->zzzN:Lcom/google/android/gms/internal/zzim;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaka;->zzabq:Lcom/google/android/gms/ads/internal/overlay/zzw;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzaka;->zzIV:Lcom/google/android/gms/internal/zzqk;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzaka;->zzabz:Lcom/google/android/gms/ads/internal/overlay/zzag;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzaka;->zzJG:Lcom/google/android/gms/ads/internal/zzw;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzaka;->zzNH:Lcom/google/android/gms/internal/zzwu;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzaka;->zzJE:Lcom/google/android/gms/internal/zzrm;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzaka;->zzabu:Z

    return-void
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaka;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zzabp:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaka;->zzabp:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zza(ZI)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zzJJ:Lcom/google/android/gms/internal/zzajz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzajz;->zziA()Z

    move-result v1

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaka;->zzJJ:Lcom/google/android/gms/internal/zzajz;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzajz;->zzam()Lcom/google/android/gms/internal/zziv;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/gms/internal/zziv;->zzAv:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaka;->zzabq:Lcom/google/android/gms/ads/internal/overlay/zzw;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaka;->zzabz:Lcom/google/android/gms/ads/internal/overlay/zzag;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzaka;->zzJJ:Lcom/google/android/gms/internal/zzajz;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzaka;->zzJJ:Lcom/google/android/gms/internal/zzajz;

    invoke-interface {v5}, Lcom/google/android/gms/internal/zzajz;->zziz()Lcom/google/android/gms/internal/zzajd;

    move-result-object v7

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/zzim;Lcom/google/android/gms/ads/internal/overlay/zzw;Lcom/google/android/gms/ads/internal/overlay/zzag;Lcom/google/android/gms/internal/zzajz;ZILcom/google/android/gms/internal/zzajd;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaka;->zza(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaka;->zzzN:Lcom/google/android/gms/internal/zzim;

    goto :goto_0
.end method

.method public final zza(ZILjava/lang/String;)V
    .locals 10

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zzJJ:Lcom/google/android/gms/internal/zzajz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzajz;->zziA()Z

    move-result v3

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaka;->zzJJ:Lcom/google/android/gms/internal/zzajz;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzajz;->zzam()Lcom/google/android/gms/internal/zziv;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/gms/internal/zziv;->zzAv:Z

    if-nez v1, :cond_0

    move-object v1, v2

    :goto_0
    if-eqz v3, :cond_1

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/zzaka;->zzIV:Lcom/google/android/gms/internal/zzqk;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzaka;->zzabz:Lcom/google/android/gms/ads/internal/overlay/zzag;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzaka;->zzJJ:Lcom/google/android/gms/internal/zzajz;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzaka;->zzJJ:Lcom/google/android/gms/internal/zzajz;

    invoke-interface {v6}, Lcom/google/android/gms/internal/zzajz;->zziz()Lcom/google/android/gms/internal/zzajd;

    move-result-object v9

    move v6, p1

    move v7, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/zzim;Lcom/google/android/gms/ads/internal/overlay/zzw;Lcom/google/android/gms/internal/zzqk;Lcom/google/android/gms/ads/internal/overlay/zzag;Lcom/google/android/gms/internal/zzajz;ZILjava/lang/String;Lcom/google/android/gms/internal/zzajd;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaka;->zza(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaka;->zzzN:Lcom/google/android/gms/internal/zzim;

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/zzakh;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaka;->zzJJ:Lcom/google/android/gms/internal/zzajz;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzaka;->zzabq:Lcom/google/android/gms/ads/internal/overlay/zzw;

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/zzakh;-><init>(Lcom/google/android/gms/internal/zzajz;Lcom/google/android/gms/ads/internal/overlay/zzw;)V

    goto :goto_1
.end method

.method public final zza(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 11

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zzJJ:Lcom/google/android/gms/internal/zzajz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzajz;->zziA()Z

    move-result v3

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaka;->zzJJ:Lcom/google/android/gms/internal/zzajz;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzajz;->zzam()Lcom/google/android/gms/internal/zziv;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/gms/internal/zziv;->zzAv:Z

    if-nez v1, :cond_0

    move-object v1, v2

    :goto_0
    if-eqz v3, :cond_1

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/zzaka;->zzIV:Lcom/google/android/gms/internal/zzqk;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzaka;->zzabz:Lcom/google/android/gms/ads/internal/overlay/zzag;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzaka;->zzJJ:Lcom/google/android/gms/internal/zzajz;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzaka;->zzJJ:Lcom/google/android/gms/internal/zzajz;

    invoke-interface {v6}, Lcom/google/android/gms/internal/zzajz;->zziz()Lcom/google/android/gms/internal/zzajd;

    move-result-object v10

    move v6, p1

    move v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/zzim;Lcom/google/android/gms/ads/internal/overlay/zzw;Lcom/google/android/gms/internal/zzqk;Lcom/google/android/gms/ads/internal/overlay/zzag;Lcom/google/android/gms/internal/zzajz;ZILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzajd;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaka;->zza(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaka;->zzzN:Lcom/google/android/gms/internal/zzim;

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/zzakh;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaka;->zzJJ:Lcom/google/android/gms/internal/zzajz;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzaka;->zzabq:Lcom/google/android/gms/ads/internal/overlay/zzw;

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/zzakh;-><init>(Lcom/google/android/gms/internal/zzajz;Lcom/google/android/gms/ads/internal/overlay/zzw;)V

    goto :goto_1
.end method

.method public final zzb(II)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zzJH:Lcom/google/android/gms/internal/zzwj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zzJH:Lcom/google/android/gms/internal/zzwj;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzwj;->zzb(II)V

    :cond_0
    return-void
.end method

.method public final zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaka;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zzabp:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzcn()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaka;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaka;->zzwK:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzfL()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaka;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaka;->zzabu:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaka;->zzwK:Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagy;

    new-instance v0, Lcom/google/android/gms/internal/zzakd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzakd;-><init>(Lcom/google/android/gms/internal/zzaka;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagy;->runOnUiThread(Ljava/lang/Runnable;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zziO()Lcom/google/android/gms/ads/internal/zzw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zzJG:Lcom/google/android/gms/ads/internal/zzw;

    return-object v0
.end method

.method public final zziP()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaka;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaka;->zzabv:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zziQ()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaka;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zzabw:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zziR()Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaka;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zzabx:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zziS()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaka;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaka;->zzaby:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zziT()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaka;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "Loading blank page in WebView, 2..."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafq;->v(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaka;->zzabC:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zzJJ:Lcom/google/android/gms/internal/zzajz;

    const-string v2, "about:blank"

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzajz;->zzaU(Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zziV()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zztt:Lcom/google/android/gms/internal/zzaes;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaka;->zzJJ:Lcom/google/android/gms/internal/zzajz;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzajz;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xa

    invoke-direct {p0, v1, v0, v2}, Lcom/google/android/gms/internal/zzaka;->zza(Landroid/view/View;Lcom/google/android/gms/internal/zzaes;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaka;->zziU()V

    new-instance v1, Lcom/google/android/gms/internal/zzakc;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzakc;-><init>(Lcom/google/android/gms/internal/zzaka;Lcom/google/android/gms/internal/zzaes;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzaka;->zzabG:Landroid/view/View$OnAttachStateChangeListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zzJJ:Lcom/google/android/gms/internal/zzajz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzajz;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaka;->zzabG:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_0
.end method

.method public final zziW()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaka;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaka;->zzaby:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p0, Lcom/google/android/gms/internal/zzaka;->zzabF:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzaka;->zzabF:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaka;->zziZ()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final zziX()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzaka;->zzabF:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzaka;->zzabF:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaka;->zziZ()V

    return-void
.end method

.method public final zziY()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaka;->zzabE:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaka;->zziZ()V

    return-void
.end method

.method public final zzja()Lcom/google/android/gms/internal/zzaki;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zzabB:Lcom/google/android/gms/internal/zzaki;

    return-object v0
.end method
