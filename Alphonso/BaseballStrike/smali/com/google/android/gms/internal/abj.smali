.class final Lcom/google/android/gms/internal/abj;
.super Ljava/lang/Object;


# instance fields
.field private final mActivity:Landroid/app/Activity;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final zzcpJ:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final zzv:Ljava/lang/Runnable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/abj;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/google/android/gms/internal/abj;->zzv:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/google/android/gms/internal/abj;->zzcpJ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/internal/abj;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/abj;

    iget-object v1, p1, Lcom/google/android/gms/internal/abj;->zzcpJ:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/abj;->zzcpJ:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/google/android/gms/internal/abj;->zzv:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/google/android/gms/internal/abj;->zzv:Ljava/lang/Runnable;

    if-ne v1, v2, :cond_0

    iget-object v1, p1, Lcom/google/android/gms/internal/abj;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/internal/abj;->mActivity:Landroid/app/Activity;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final getActivity()Landroid/app/Activity;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/abj;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/abj;->zzcpJ:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final zzEe()Ljava/lang/Runnable;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/abj;->zzv:Ljava/lang/Runnable;

    return-object v0
.end method

.method public final zzLb()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/abj;->zzcpJ:Ljava/lang/Object;

    return-object v0
.end method
