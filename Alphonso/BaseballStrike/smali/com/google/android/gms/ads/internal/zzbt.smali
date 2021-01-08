.class public final Lcom/google/android/gms/ads/internal/zzbt;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzm;
.end annotation


# instance fields
.field public final zzqF:Landroid/content/Context;

.field zzut:Z

.field final zzvS:Ljava/lang/String;

.field public zzvT:Ljava/lang/String;

.field final zzvU:Lcom/google/android/gms/internal/zzcu;

.field public final zzvV:Lcom/google/android/gms/internal/zzajd;

.field zzvW:Lcom/google/android/gms/ads/internal/zzbu;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public zzvX:Lcom/google/android/gms/internal/zzafo;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public zzvY:Lcom/google/android/gms/internal/zzaho;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public zzvZ:Lcom/google/android/gms/internal/zziv;

.field private zzwA:Z

.field private zzwB:Z

.field private zzwC:Z

.field public zzwa:Lcom/google/android/gms/internal/zzafe;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public zzwb:Lcom/google/android/gms/internal/zzaff;

.field public zzwc:Lcom/google/android/gms/internal/zzafg;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field zzwd:Lcom/google/android/gms/internal/zzjl;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field zzwe:Lcom/google/android/gms/internal/zzjo;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field zzwf:Lcom/google/android/gms/internal/zzke;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field zzwg:Lcom/google/android/gms/internal/zzkk;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field zzwh:Lcom/google/android/gms/internal/zzpn;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field zzwi:Lcom/google/android/gms/internal/zzpq;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field zzwj:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzpt;",
            ">;"
        }
    .end annotation
.end field

.field zzwk:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzpw;",
            ">;"
        }
    .end annotation
.end field

.field zzwl:Lcom/google/android/gms/internal/zzon;

.field zzwm:Lcom/google/android/gms/internal/zzlx;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field zzwn:Lcom/google/android/gms/internal/zzky;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field zzwo:Lcom/google/android/gms/internal/zzpz;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field zzwp:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field zzwq:Lcom/google/android/gms/internal/zznh;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field zzwr:Lcom/google/android/gms/internal/zzadc;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field zzws:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public zzwt:Lcom/google/android/gms/internal/zzafm;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field zzwu:Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public zzwv:I

.field private zzww:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/zzafg;",
            ">;"
        }
    .end annotation
.end field

.field private zzwx:I

.field private zzwy:I

.field private zzwz:Lcom/google/android/gms/internal/zzaiq;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zziv;Ljava/lang/String;Lcom/google/android/gms/internal/zzajd;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/zzbt;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zziv;Ljava/lang/String;Lcom/google/android/gms/internal/zzajd;Lcom/google/android/gms/internal/zzcu;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zziv;Ljava/lang/String;Lcom/google/android/gms/internal/zzajd;Lcom/google/android/gms/internal/zzcu;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v1, -0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzwt:Lcom/google/android/gms/internal/zzafm;

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzwu:Landroid/view/View;

    iput v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzwv:I

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzut:Z

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzww:Ljava/util/HashSet;

    iput v1, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzwx:I

    iput v1, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzwy:I

    iput-boolean v3, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzwA:Z

    iput-boolean v3, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzwB:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzwC:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/zzmo;->initialize(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbD()Lcom/google/android/gms/internal/zzafj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzafj;->zzhr()Lcom/google/android/gms/internal/zzmr;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/zzmo;->zzdK()Ljava/util/List;

    move-result-object v0

    iget v1, p4, Lcom/google/android/gms/internal/zzajd;->zzaaO:I

    if-eqz v1, :cond_0

    iget v1, p4, Lcom/google/android/gms/internal/zzajd;->zzaaO:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbD()Lcom/google/android/gms/internal/zzafj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzafj;->zzhr()Lcom/google/android/gms/internal/zzmr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzmr;->zze(Ljava/util/List;)V

    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzvS:Ljava/lang/String;

    iget-boolean v0, p2, Lcom/google/android/gms/internal/zziv;->zzAv:Z

    if-nez v0, :cond_2

    iget-boolean v0, p2, Lcom/google/android/gms/internal/zziv;->zzAx:Z

    if-eqz v0, :cond_3

    :cond_2
    iput-object v2, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzvW:Lcom/google/android/gms/ads/internal/zzbu;

    :goto_0
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzvZ:Lcom/google/android/gms/internal/zziv;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzvT:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzqF:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzvV:Lcom/google/android/gms/internal/zzajd;

    new-instance v0, Lcom/google/android/gms/internal/zzcu;

    new-instance v1, Lcom/google/android/gms/ads/internal/zzah;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/zzah;-><init>(Lcom/google/android/gms/ads/internal/zzbt;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzcu;-><init>(Lcom/google/android/gms/internal/zzcp;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzvU:Lcom/google/android/gms/internal/zzcu;

    new-instance v0, Lcom/google/android/gms/internal/zzaiq;

    const-wide/16 v2, 0xc8

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/zzaiq;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzwz:Lcom/google/android/gms/internal/zzaiq;

    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzwk:Landroid/support/v4/util/SimpleArrayMap;

    return-void

    :cond_3
    new-instance v0, Lcom/google/android/gms/ads/internal/zzbu;

    iget-object v3, p4, Lcom/google/android/gms/internal/zzajd;->zzaR:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p3

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/zzbu;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzvW:Lcom/google/android/gms/ads/internal/zzbu;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzvW:Lcom/google/android/gms/ads/internal/zzbu;

    iget v1, p2, Lcom/google/android/gms/internal/zziv;->widthPixels:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzbu;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzvW:Lcom/google/android/gms/ads/internal/zzbu;

    iget v1, p2, Lcom/google/android/gms/internal/zziv;->heightPixels:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzbu;->setMinimumHeight(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzvW:Lcom/google/android/gms/ads/internal/zzbu;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzbu;->setVisibility(I)V

    goto :goto_0
.end method

.method private final zzd(Z)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzvW:Lcom/google/android/gms/ads/internal/zzbu;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzwa:Lcom/google/android/gms/internal/zzafe;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzwa:Lcom/google/android/gms/internal/zzafe;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzafe;->zzPg:Lcom/google/android/gms/internal/zzajz;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzwa:Lcom/google/android/gms/internal/zzafe;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzafe;->zzPg:Lcom/google/android/gms/internal/zzajz;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzajz;->zziw()Lcom/google/android/gms/internal/zzaka;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzwz:Lcom/google/android/gms/internal/zzaiq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaiq;->tryAcquire()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzwa:Lcom/google/android/gms/internal/zzafe;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzafe;->zzPg:Lcom/google/android/gms/internal/zzajz;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzajz;->zziw()Lcom/google/android/gms/internal/zzaka;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaka;->zzcn()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x2

    new-array v2, v2, [I

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzvW:Lcom/google/android/gms/ads/internal/zzbu;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/ads/internal/zzbu;->getLocationOnScreen([I)V

    invoke-static {}, Lcom/google/android/gms/internal/zzji;->zzds()Lcom/google/android/gms/internal/zzaix;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzqF:Landroid/content/Context;

    aget v4, v2, v1

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/zzaix;->zzd(Landroid/content/Context;I)I

    move-result v3

    invoke-static {}, Lcom/google/android/gms/internal/zzji;->zzds()Lcom/google/android/gms/internal/zzaix;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzqF:Landroid/content/Context;

    aget v2, v2, v0

    invoke-static {v4, v2}, Lcom/google/android/gms/internal/zzaix;->zzd(Landroid/content/Context;I)I

    move-result v2

    iget v4, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzwx:I

    if-ne v3, v4, :cond_3

    iget v4, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzwy:I

    if-eq v2, v4, :cond_4

    :cond_3
    iput v3, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzwx:I

    iput v2, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzwy:I

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzwa:Lcom/google/android/gms/internal/zzafe;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzafe;->zzPg:Lcom/google/android/gms/internal/zzajz;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzajz;->zziw()Lcom/google/android/gms/internal/zzaka;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzwx:I

    iget v4, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzwy:I

    if-nez p1, :cond_6

    :goto_1
    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/internal/zzaka;->zza(IIZ)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzvW:Lcom/google/android/gms/ads/internal/zzbu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzvW:Lcom/google/android/gms/ads/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzbu;->getRootView()Landroid/view/View;

    move-result-object v0

    const v2, 0x1020002

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzvW:Lcom/google/android/gms/ads/internal/zzbu;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/ads/internal/zzbu;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {v0, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget v0, v2, Landroid/graphics/Rect;->top:I

    iget v4, v3, Landroid/graphics/Rect;->top:I

    if-eq v0, v4, :cond_5

    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzwA:Z

    :cond_5
    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    if-eq v0, v2, :cond_0

    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzwB:Z

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/zzbt;->zzd(Z)V

    return-void
.end method

.method public final onScrollChanged()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/zzbt;->zzd(Z)V

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzwC:Z

    return-void
.end method

.method public final zza(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/zzafg;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzww:Ljava/util/HashSet;

    return-void
.end method

.method public final zzbZ()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/zzafg;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzww:Ljava/util/HashSet;

    return-object v0
.end method

.method public final zzca()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzwa:Lcom/google/android/gms/internal/zzafe;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzwa:Lcom/google/android/gms/internal/zzafe;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzafe;->zzPg:Lcom/google/android/gms/internal/zzajz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzwa:Lcom/google/android/gms/internal/zzafe;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzafe;->zzPg:Lcom/google/android/gms/internal/zzajz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzajz;->destroy()V

    :cond_0
    return-void
.end method

.method public final zzcb()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzwa:Lcom/google/android/gms/internal/zzafe;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzwa:Lcom/google/android/gms/internal/zzafe;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzafe;->zzMJ:Lcom/google/android/gms/internal/zzut;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzwa:Lcom/google/android/gms/internal/zzafe;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzafe;->zzMJ:Lcom/google/android/gms/internal/zzut;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzut;->destroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "Could not destroy mediation adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafq;->zzaT(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final zzcc()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzwv:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zzcd()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzwv:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zzce()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzwA:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzwB:Z

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzwA:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzwC:Z

    if-eqz v0, :cond_1

    const-string v0, "top-scrollable"

    goto :goto_0

    :cond_1
    const-string v0, "top-locked"

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzwB:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzwC:Z

    if-eqz v0, :cond_3

    const-string v0, "bottom-scrollable"

    goto :goto_0

    :cond_3
    const-string v0, "bottom-locked"

    goto :goto_0

    :cond_4
    const-string v0, ""

    goto :goto_0
.end method

.method public final zze(Z)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzwv:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzwa:Lcom/google/android/gms/internal/zzafe;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzwa:Lcom/google/android/gms/internal/zzafe;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzafe;->zzPg:Lcom/google/android/gms/internal/zzajz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzwa:Lcom/google/android/gms/internal/zzafe;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzafe;->zzPg:Lcom/google/android/gms/internal/zzajz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzajz;->stopLoading()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzvX:Lcom/google/android/gms/internal/zzafo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzvX:Lcom/google/android/gms/internal/zzafo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzafo;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzvY:Lcom/google/android/gms/internal/zzaho;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzvY:Lcom/google/android/gms/internal/zzaho;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaho;->cancel()V

    :cond_2
    if-eqz p1, :cond_3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzwa:Lcom/google/android/gms/internal/zzafe;

    :cond_3
    return-void
.end method
