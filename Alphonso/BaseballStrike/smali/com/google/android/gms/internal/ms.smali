.class final Lcom/google/android/gms/internal/ms;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener",
        "<",
        "Lcom/google/firebase/auth/GetTokenResult;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzbZx:Lcom/google/android/gms/internal/pu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mq;Lcom/google/android/gms/internal/pu;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ms;->zzbZx:Lcom/google/android/gms/internal/pu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/google/firebase/auth/GetTokenResult;

    iget-object v0, p0, Lcom/google/android/gms/internal/ms;->zzbZx:Lcom/google/android/gms/internal/pu;

    invoke-virtual {p1}, Lcom/google/firebase/auth/GetTokenResult;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/pu;->zzgF(Ljava/lang/String;)V

    return-void
.end method
