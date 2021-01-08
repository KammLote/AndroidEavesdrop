.class final Lcom/google/android/gms/internal/zzayb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzayi:Lcom/google/android/gms/internal/zzaxw;

.field private synthetic zzayl:Lcom/google/android/gms/internal/zzaxp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaxy;Lcom/google/android/gms/internal/zzaxw;Lcom/google/android/gms/internal/zzaxp;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzayb;->zzayi:Lcom/google/android/gms/internal/zzaxw;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzayb;->zzayl:Lcom/google/android/gms/internal/zzaxp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayb;->zzayi:Lcom/google/android/gms/internal/zzaxw;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzayb;->zzayl:Lcom/google/android/gms/internal/zzaxp;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzaxw;->zza(Lcom/google/android/gms/internal/zzaxw;Lcom/google/android/gms/internal/zzaxp;)V

    return-void
.end method
