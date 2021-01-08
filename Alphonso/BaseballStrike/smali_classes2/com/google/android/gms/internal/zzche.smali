.class final Lcom/google/android/gms/internal/zzche;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/google/android/gms/internal/zzcjj;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic zzbte:Lcom/google/android/gms/internal/zzceg;

.field private synthetic zzbtf:Lcom/google/android/gms/internal/zzcgp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcgp;Lcom/google/android/gms/internal/zzceg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzche;->zzbtf:Lcom/google/android/gms/internal/zzcgp;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzche;->zzbte:Lcom/google/android/gms/internal/zzceg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzche;->zzbtf:Lcom/google/android/gms/internal/zzcgp;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcgp;->zza(Lcom/google/android/gms/internal/zzcgp;)Lcom/google/android/gms/internal/zzcgk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgk;->zzze()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzche;->zzbtf:Lcom/google/android/gms/internal/zzcgp;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcgp;->zza(Lcom/google/android/gms/internal/zzcgp;)Lcom/google/android/gms/internal/zzcgk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgk;->zzwz()Lcom/google/android/gms/internal/zzcem;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzche;->zzbte:Lcom/google/android/gms/internal/zzceg;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzceg;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcem;->zzdP(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
