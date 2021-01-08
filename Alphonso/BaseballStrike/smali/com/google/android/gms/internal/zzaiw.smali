.class public final Lcom/google/android/gms/internal/zzaiw;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzm;
.end annotation


# instance fields
.field private final mView:Landroid/view/View;

.field private zzaaC:Landroid/app/Activity;

.field private zzaaD:Z

.field private zzaaE:Z

.field private zzaaF:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private zzaaG:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private zzzG:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaiw;->zzaaC:Landroid/app/Activity;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaiw;->mView:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzaiw;->zzaaF:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzaiw;->zzaaG:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    return-void
.end method

.method private final zzii()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaiw;->zzaaD:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaiw;->zzaaF:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaiw;->zzaaC:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagy;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaiw;->zzaaC:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaiw;->zzaaF:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzagy;->zza(Landroid/app/Activity;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbX()Lcom/google/android/gms/internal/zzaju;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaiw;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaiw;->zzaaF:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzaju;->zza(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaiw;->zzaaG:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaiw;->zzaaC:Landroid/app/Activity;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagy;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaiw;->zzaaC:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaiw;->zzaaG:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzagy;->zza(Landroid/app/Activity;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbX()Lcom/google/android/gms/internal/zzaju;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaiw;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaiw;->zzaaG:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzaju;->zza(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaiw;->zzaaD:Z

    :cond_4
    return-void
.end method

.method private final zzij()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaiw;->zzaaC:Landroid/app/Activity;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaiw;->zzaaD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaiw;->zzaaF:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaiw;->zzaaC:Landroid/app/Activity;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbB()Lcom/google/android/gms/internal/zzahd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaiw;->zzaaC:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaiw;->zzaaF:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzahd;->zzb(Landroid/app/Activity;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaiw;->zzaaG:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaiw;->zzaaC:Landroid/app/Activity;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagy;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaiw;->zzaaC:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaiw;->zzaaG:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzagy;->zzb(Landroid/app/Activity;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaiw;->zzaaD:Z

    goto :goto_0
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaiw;->zzaaE:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaiw;->zzzG:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaiw;->zzii()V

    :cond_0
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaiw;->zzaaE:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaiw;->zzij()V

    return-void
.end method

.method public final zzi(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaiw;->zzaaC:Landroid/app/Activity;

    return-void
.end method

.method public final zzig()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaiw;->zzzG:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaiw;->zzaaE:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaiw;->zzii()V

    :cond_0
    return-void
.end method

.method public final zzih()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaiw;->zzzG:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaiw;->zzij()V

    return-void
.end method
