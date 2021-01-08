.class final Lcom/google/android/gms/internal/zzafp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzYX:Lcom/google/android/gms/internal/zzafo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzafo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzafp;->zzYX:Lcom/google/android/gms/internal/zzafo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzafp;->zzYX:Lcom/google/android/gms/internal/zzafo;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzafo;->zza(Lcom/google/android/gms/internal/zzafo;Ljava/lang/Thread;)Ljava/lang/Thread;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzafp;->zzYX:Lcom/google/android/gms/internal/zzafo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzafo;->zzbd()V

    return-void
.end method
