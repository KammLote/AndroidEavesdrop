.class final Lcom/google/android/gms/internal/ss;
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
        "<+",
        "Lcom/google/android/gms/internal/vh;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic zzccI:Lcom/google/android/gms/internal/qo;

.field private synthetic zzcdX:J

.field private synthetic zzceN:Z

.field private synthetic zzceR:Lcom/google/android/gms/internal/sl;

.field private synthetic zzceZ:Lcom/google/android/gms/internal/px;

.field private synthetic zzcfa:Lcom/google/android/gms/internal/px;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/sl;ZLcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/px;JLcom/google/android/gms/internal/px;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/ss;->zzceR:Lcom/google/android/gms/internal/sl;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ss;->zzceN:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/ss;->zzccI:Lcom/google/android/gms/internal/qo;

    iput-object p4, p0, Lcom/google/android/gms/internal/ss;->zzceZ:Lcom/google/android/gms/internal/px;

    iput-wide p5, p0, Lcom/google/android/gms/internal/ss;->zzcdX:J

    iput-object p7, p0, Lcom/google/android/gms/internal/ss;->zzcfa:Lcom/google/android/gms/internal/px;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ss;->zzceN:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ss;->zzceR:Lcom/google/android/gms/internal/sl;

    invoke-static {v0}, Lcom/google/android/gms/internal/sl;->zzb(Lcom/google/android/gms/internal/sl;)Lcom/google/android/gms/internal/ue;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ss;->zzccI:Lcom/google/android/gms/internal/qo;

    iget-object v2, p0, Lcom/google/android/gms/internal/ss;->zzceZ:Lcom/google/android/gms/internal/px;

    iget-wide v4, p0, Lcom/google/android/gms/internal/ss;->zzcdX:J

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/google/android/gms/internal/ue;->zza(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/px;J)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ss;->zzceR:Lcom/google/android/gms/internal/sl;

    invoke-static {v0}, Lcom/google/android/gms/internal/sl;->zzc(Lcom/google/android/gms/internal/sl;)Lcom/google/android/gms/internal/tm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ss;->zzccI:Lcom/google/android/gms/internal/qo;

    iget-object v2, p0, Lcom/google/android/gms/internal/ss;->zzcfa:Lcom/google/android/gms/internal/px;

    iget-wide v4, p0, Lcom/google/android/gms/internal/ss;->zzcdX:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/tm;->zza(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/px;Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ss;->zzceR:Lcom/google/android/gms/internal/sl;

    new-instance v1, Lcom/google/android/gms/internal/tt;

    sget-object v2, Lcom/google/android/gms/internal/tw;->zzcfN:Lcom/google/android/gms/internal/tw;

    iget-object v3, p0, Lcom/google/android/gms/internal/ss;->zzccI:Lcom/google/android/gms/internal/qo;

    iget-object v4, p0, Lcom/google/android/gms/internal/ss;->zzcfa:Lcom/google/android/gms/internal/px;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/tt;-><init>(Lcom/google/android/gms/internal/tw;Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/px;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/sl;->zza(Lcom/google/android/gms/internal/sl;Lcom/google/android/gms/internal/tu;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
