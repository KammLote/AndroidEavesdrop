.class final Lcom/google/android/gms/internal/zzamd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzafD:Lcom/google/android/gms/internal/zzalx;

.field private synthetic zzafI:Lcom/google/android/gms/internal/zzanp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzalx;Lcom/google/android/gms/internal/zzanp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzamd;->zzafD:Lcom/google/android/gms/internal/zzalx;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzamd;->zzafI:Lcom/google/android/gms/internal/zzanp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->zzafD:Lcom/google/android/gms/internal/zzalx;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzalx;->zza(Lcom/google/android/gms/internal/zzalx;)Lcom/google/android/gms/internal/zzamu;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamd;->zzafI:Lcom/google/android/gms/internal/zzanp;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzamu;->zzb(Lcom/google/android/gms/internal/zzanp;)V

    return-void
.end method
