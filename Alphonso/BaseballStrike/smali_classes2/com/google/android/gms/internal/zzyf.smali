.class final Lcom/google/android/gms/internal/zzyf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzRi:Lcom/google/android/gms/internal/zzye;

.field private synthetic zztz:Lcom/google/android/gms/internal/zzafe;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzye;Lcom/google/android/gms/internal/zzafe;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzyf;->zzRi:Lcom/google/android/gms/internal/zzye;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzyf;->zztz:Lcom/google/android/gms/internal/zzafe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyf;->zzRi:Lcom/google/android/gms/internal/zzye;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzye;->zza(Lcom/google/android/gms/internal/zzye;)Lcom/google/android/gms/internal/zzxx;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzyf;->zztz:Lcom/google/android/gms/internal/zzafe;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzxx;->zzb(Lcom/google/android/gms/internal/zzafe;)V

    return-void
.end method
