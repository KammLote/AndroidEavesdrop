.class final Lcom/google/android/gms/internal/zzadx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzWT:Lcom/google/android/gms/internal/zzadv;

.field private synthetic zztz:Lcom/google/android/gms/internal/zzafe;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzadv;Lcom/google/android/gms/internal/zzafe;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzadx;->zzWT:Lcom/google/android/gms/internal/zzadv;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzadx;->zztz:Lcom/google/android/gms/internal/zzafe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzadx;->zzWT:Lcom/google/android/gms/internal/zzadv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzadv;->zza(Lcom/google/android/gms/internal/zzadv;)Lcom/google/android/gms/internal/zzacr;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzadx;->zztz:Lcom/google/android/gms/internal/zzafe;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzacr;->zzb(Lcom/google/android/gms/internal/zzafe;)V

    return-void
.end method
