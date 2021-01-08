.class final Lcom/google/android/gms/internal/sm;
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

.field private synthetic zzceO:Lcom/google/android/gms/internal/xf;

.field private synthetic zzceP:Lcom/google/android/gms/internal/xf;

.field private synthetic zzceQ:Z

.field private synthetic zzceR:Lcom/google/android/gms/internal/sl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/sl;ZLcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/xf;JLcom/google/android/gms/internal/xf;Z)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/sm;->zzceR:Lcom/google/android/gms/internal/sl;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/sm;->zzceN:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/sm;->zzccI:Lcom/google/android/gms/internal/qo;

    iput-object p4, p0, Lcom/google/android/gms/internal/sm;->zzceO:Lcom/google/android/gms/internal/xf;

    iput-wide p5, p0, Lcom/google/android/gms/internal/sm;->zzcdX:J

    iput-object p7, p0, Lcom/google/android/gms/internal/sm;->zzceP:Lcom/google/android/gms/internal/xf;

    iput-boolean p8, p0, Lcom/google/android/gms/internal/sm;->zzceQ:Z

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

    iget-boolean v0, p0, Lcom/google/android/gms/internal/sm;->zzceN:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/sm;->zzceR:Lcom/google/android/gms/internal/sl;

    invoke-static {v0}, Lcom/google/android/gms/internal/sl;->zzb(Lcom/google/android/gms/internal/sl;)Lcom/google/android/gms/internal/ue;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/sm;->zzccI:Lcom/google/android/gms/internal/qo;

    iget-object v2, p0, Lcom/google/android/gms/internal/sm;->zzceO:Lcom/google/android/gms/internal/xf;

    iget-wide v4, p0, Lcom/google/android/gms/internal/sm;->zzcdX:J

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/google/android/gms/internal/ue;->zza(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/xf;J)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/sm;->zzceR:Lcom/google/android/gms/internal/sl;

    invoke-static {v0}, Lcom/google/android/gms/internal/sl;->zzc(Lcom/google/android/gms/internal/sl;)Lcom/google/android/gms/internal/tm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/sm;->zzccI:Lcom/google/android/gms/internal/qo;

    iget-object v2, p0, Lcom/google/android/gms/internal/sm;->zzceP:Lcom/google/android/gms/internal/xf;

    iget-wide v4, p0, Lcom/google/android/gms/internal/sm;->zzcdX:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/android/gms/internal/sm;->zzceQ:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/tm;->zza(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/xf;Ljava/lang/Long;Z)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/sm;->zzceQ:Z

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/sm;->zzceR:Lcom/google/android/gms/internal/sl;

    new-instance v1, Lcom/google/android/gms/internal/ty;

    sget-object v2, Lcom/google/android/gms/internal/tw;->zzcfN:Lcom/google/android/gms/internal/tw;

    iget-object v3, p0, Lcom/google/android/gms/internal/sm;->zzccI:Lcom/google/android/gms/internal/qo;

    iget-object v4, p0, Lcom/google/android/gms/internal/sm;->zzceP:Lcom/google/android/gms/internal/xf;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ty;-><init>(Lcom/google/android/gms/internal/tw;Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/xf;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/sl;->zza(Lcom/google/android/gms/internal/sl;Lcom/google/android/gms/internal/tu;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method
