.class final Lcom/google/android/gms/internal/zzayw;
.super Lcom/google/android/gms/internal/zzazl;


# instance fields
.field private synthetic zzayZ:Lcom/google/android/gms/internal/zzayv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzayv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzayw;->zzayZ:Lcom/google/android/gms/internal/zzayv;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzazl;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzah(I)V
    .locals 3

    invoke-static {}, Lcom/google/android/gms/internal/zzayv;->zzoQ()Lcom/google/android/gms/internal/zzayn;

    move-result-object v0

    const-string v1, "onRemoteDisplayEnded"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzayn;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayw;->zzayZ:Lcom/google/android/gms/internal/zzayv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzayv;->zza(Lcom/google/android/gms/internal/zzayv;)V

    return-void
.end method
