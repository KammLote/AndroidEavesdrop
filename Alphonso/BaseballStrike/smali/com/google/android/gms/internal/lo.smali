.class public final Lcom/google/android/gms/internal/lo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/auth/AuthResult;


# instance fields
.field private zzbXD:Lcom/google/android/gms/internal/lr;

.field private zzbXE:Lcom/google/android/gms/internal/ln;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/lr;)V
    .locals 5
    .param p1    # Lcom/google/android/gms/internal/lr;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/lr;

    iput-object v0, p0, Lcom/google/android/gms/internal/lo;->zzbXD:Lcom/google/android/gms/internal/lr;

    iget-object v0, p0, Lcom/google/android/gms/internal/lo;->zzbXD:Lcom/google/android/gms/internal/lr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lr;->zzEX()Ljava/util/List;

    move-result-object v2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/lo;->zzbXE:Lcom/google/android/gms/internal/ln;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/lp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lp;->getRawUserInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v3, Lcom/google/android/gms/internal/ln;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/lp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lp;->getProviderId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/lp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lp;->getRawUserInfo()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/google/android/gms/internal/ln;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/google/android/gms/internal/lo;->zzbXE:Lcom/google/android/gms/internal/ln;

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final getAdditionalUserInfo()Lcom/google/firebase/auth/AdditionalUserInfo;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/lo;->zzbXE:Lcom/google/android/gms/internal/ln;

    return-object v0
.end method

.method public final getUser()Lcom/google/firebase/auth/FirebaseUser;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/lo;->zzbXD:Lcom/google/android/gms/internal/lr;

    return-object v0
.end method
