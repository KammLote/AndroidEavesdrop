.class public final Lcom/google/android/gms/internal/kg;
.super Ljava/lang/Object;


# instance fields
.field private zzbVh:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzcF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/kg;->zzbVh:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzEO()Lcom/google/android/gms/internal/kf;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/kf;

    iget-object v1, p0, Lcom/google/android/gms/internal/kg;->zzbVh:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/kf;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ke;)V

    return-object v0
.end method
