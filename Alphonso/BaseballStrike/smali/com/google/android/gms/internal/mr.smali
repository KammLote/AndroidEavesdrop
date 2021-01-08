.class final Lcom/google/android/gms/internal/mr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field private synthetic zzbZx:Lcom/google/android/gms/internal/pu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mq;Lcom/google/android/gms/internal/pu;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/mr;->zzbZx:Lcom/google/android/gms/internal/pu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 2
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/google/firebase/FirebaseApiNotAvailableException;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/internal/zw;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/mr;->zzbZx:Lcom/google/android/gms/internal/pu;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/pu;->zzgF(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/mr;->zzbZx:Lcom/google/android/gms/internal/pu;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/pu;->onError(Ljava/lang/String;)V

    goto :goto_1
.end method
