.class final Lcom/google/android/gms/internal/zzchm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbtt:Lcom/google/android/gms/internal/zzchk;

.field private synthetic zzbtu:Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzchk;Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzchm;->zzbtt:Lcom/google/android/gms/internal/zzchk;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzchm;->zzbtu:Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchm;->zzbtt:Lcom/google/android/gms/internal/zzchk;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzchm;->zzbtu:Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzchk;->zza(Lcom/google/android/gms/internal/zzchk;Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    return-void
.end method
