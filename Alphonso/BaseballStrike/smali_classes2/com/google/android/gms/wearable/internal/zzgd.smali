.class final Lcom/google/android/gms/wearable/internal/zzgd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbdy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzbdy",
        "<",
        "Lcom/google/android/gms/wearable/NodeApi$NodeListener;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzbRA:Lcom/google/android/gms/wearable/internal/zzeg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/zzeg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zzgd;->zzbRA:Lcom/google/android/gms/wearable/internal/zzeg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzpT()V
    .locals 0

    return-void
.end method

.method public final synthetic zzq(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/wearable/NodeApi$NodeListener;

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzgd;->zzbRA:Lcom/google/android/gms/wearable/internal/zzeg;

    invoke-interface {p1, v0}, Lcom/google/android/gms/wearable/NodeApi$NodeListener;->onPeerConnected(Lcom/google/android/gms/wearable/Node;)V

    return-void
.end method
