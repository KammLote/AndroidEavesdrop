.class final Lcom/google/android/gms/internal/mu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbWh:Lcom/google/android/gms/internal/zv;

.field private synthetic zzbZA:Lcom/google/android/gms/internal/mt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mt;Lcom/google/android/gms/internal/zv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mu;->zzbZA:Lcom/google/android/gms/internal/mt;

    iput-object p2, p0, Lcom/google/android/gms/internal/mu;->zzbWh:Lcom/google/android/gms/internal/zv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mu;->zzbZA:Lcom/google/android/gms/internal/mt;

    iget-object v0, v0, Lcom/google/android/gms/internal/mt;->zzbZy:Lcom/google/android/gms/internal/pv;

    iget-object v1, p0, Lcom/google/android/gms/internal/mu;->zzbWh:Lcom/google/android/gms/internal/zv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zv;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/pv;->zzgO(Ljava/lang/String;)V

    return-void
.end method
