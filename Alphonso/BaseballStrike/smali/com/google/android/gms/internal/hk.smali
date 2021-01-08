.class public final Lcom/google/android/gms/internal/hk;
.super Lcom/google/android/gms/internal/hj;


# instance fields
.field protected final zzbUl:Landroid/animation/Animator;

.field private final zzbUm:Lcom/google/android/gms/internal/hm;

.field private final zzbUn:Ljava/lang/Runnable;

.field private zzbUo:Lcom/google/android/gms/internal/ho;


# direct methods
.method private constructor <init>(Landroid/animation/Animator;Ljava/lang/Runnable;)V
    .locals 1
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/internal/hj;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/hl;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/hl;-><init>(Lcom/google/android/gms/internal/hk;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/hk;->zzbUo:Lcom/google/android/gms/internal/ho;

    iput-object p1, p0, Lcom/google/android/gms/internal/hk;->zzbUl:Landroid/animation/Animator;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/hk;->zzbUn:Ljava/lang/Runnable;

    invoke-static {}, Lcom/google/android/gms/internal/hm;->zzEc()Lcom/google/android/gms/internal/hm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/hk;->zzbUm:Lcom/google/android/gms/internal/hm;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/hk;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hk;->zzbUn:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static zza(Landroid/animation/Animator;Ljava/lang/Runnable;)V
    .locals 2
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/google/android/gms/internal/hk;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/hk;-><init>(Landroid/animation/Animator;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/hk;->zzb(Landroid/animation/Animator;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/hk;->zzbUm:Lcom/google/android/gms/internal/hm;

    iget-object v1, p0, Lcom/google/android/gms/internal/hk;->zzbUo:Lcom/google/android/gms/internal/ho;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hm;->zza(Lcom/google/android/gms/internal/ho;)V

    :cond_0
    return-void
.end method
