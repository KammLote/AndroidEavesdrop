.class final Lcom/google/android/gms/internal/zzcgu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbtf:Lcom/google/android/gms/internal/zzcgp;

.field private synthetic zzbtg:Lcom/google/android/gms/internal/zzcej;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcgp;Lcom/google/android/gms/internal/zzcej;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcgu;->zzbtf:Lcom/google/android/gms/internal/zzcgp;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcgu;->zzbtg:Lcom/google/android/gms/internal/zzcej;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgu;->zzbtf:Lcom/google/android/gms/internal/zzcgp;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcgp;->zza(Lcom/google/android/gms/internal/zzcgp;)Lcom/google/android/gms/internal/zzcgk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgk;->zzze()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgu;->zzbtf:Lcom/google/android/gms/internal/zzcgp;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcgp;->zza(Lcom/google/android/gms/internal/zzcgp;)Lcom/google/android/gms/internal/zzcgk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgu;->zzbtg:Lcom/google/android/gms/internal/zzcej;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcgk;->zzd(Lcom/google/android/gms/internal/zzcej;)V

    return-void
.end method
