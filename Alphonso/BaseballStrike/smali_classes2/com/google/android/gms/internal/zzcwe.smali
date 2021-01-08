.class final Lcom/google/android/gms/internal/zzcwe;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbIY:Lcom/google/android/gms/internal/zzcwc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcwc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcwe;->zzbIY:Lcom/google/android/gms/internal/zzcwc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwe;->zzbIY:Lcom/google/android/gms/internal/zzcwc;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzcwc;->zza(Lcom/google/android/gms/internal/zzcwc;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwe;->zzbIY:Lcom/google/android/gms/internal/zzcwc;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcwc;->zze(Lcom/google/android/gms/internal/zzcwc;)Lcom/google/android/gms/internal/zzcva;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzcva;->dispatch()V

    return-void
.end method
