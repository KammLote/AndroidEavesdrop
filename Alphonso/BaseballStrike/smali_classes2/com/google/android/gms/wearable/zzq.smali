.class final Lcom/google/android/gms/wearable/zzq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbRC:Lcom/google/android/gms/wearable/internal/zzaa;

.field private synthetic zzbRy:Lcom/google/android/gms/wearable/WearableListenerService$zzc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/WearableListenerService$zzc;Lcom/google/android/gms/wearable/internal/zzaa;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wearable/zzq;->zzbRy:Lcom/google/android/gms/wearable/WearableListenerService$zzc;

    iput-object p2, p0, Lcom/google/android/gms/wearable/zzq;->zzbRC:Lcom/google/android/gms/wearable/internal/zzaa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/wearable/zzq;->zzbRy:Lcom/google/android/gms/wearable/WearableListenerService$zzc;

    iget-object v0, v0, Lcom/google/android/gms/wearable/WearableListenerService$zzc;->zzbRv:Lcom/google/android/gms/wearable/WearableListenerService;

    iget-object v1, p0, Lcom/google/android/gms/wearable/zzq;->zzbRC:Lcom/google/android/gms/wearable/internal/zzaa;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wearable/WearableListenerService;->onCapabilityChanged(Lcom/google/android/gms/wearable/CapabilityInfo;)V

    return-void
.end method
