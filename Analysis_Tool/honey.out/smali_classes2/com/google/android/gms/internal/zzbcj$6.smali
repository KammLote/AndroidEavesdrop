.class Lcom/google/android/gms/internal/zzbcj$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbcj;->zzRE()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbKN:Lcom/google/android/gms/internal/zzbcj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbcj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbcj$6;->zzbKN:Lcom/google/android/gms/internal/zzbcj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 2

    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcj$6;->zzbKN:Lcom/google/android/gms/internal/zzbcj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbcj;->zzf(Lcom/google/android/gms/internal/zzbcj;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzbcj$6$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzbcj$6$1;-><init>(Lcom/google/android/gms/internal/zzbcj$6;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
