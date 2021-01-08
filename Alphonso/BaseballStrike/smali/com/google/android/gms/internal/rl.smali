.class final Lcom/google/android/gms/internal/rl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/td;


# instance fields
.field final synthetic zzcdA:Lcom/google/android/gms/internal/qr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/qr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/rl;->zzcdA:Lcom/google/android/gms/internal/qr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/vp;Lcom/google/android/gms/internal/te;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/rl;->zzcdA:Lcom/google/android/gms/internal/qr;

    invoke-static {v0}, Lcom/google/android/gms/internal/qr;->zzc(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/om;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vp;->zzFp()Lcom/google/android/gms/internal/qo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/qo;->zzHa()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vp;->zzIs()Lcom/google/android/gms/internal/vn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/vn;->zzIo()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/om;->zza(Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/vp;Lcom/google/android/gms/internal/te;Lcom/google/android/gms/internal/ol;Lcom/google/android/gms/internal/ta;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/rl;->zzcdA:Lcom/google/android/gms/internal/qr;

    invoke-static {v0}, Lcom/google/android/gms/internal/qr;->zzc(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/om;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vp;->zzFp()Lcom/google/android/gms/internal/qo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/qo;->zzHa()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vp;->zzIs()Lcom/google/android/gms/internal/vn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/vn;->zzIo()Ljava/util/Map;

    move-result-object v2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/te;->zzHr()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :goto_0
    new-instance v5, Lcom/google/android/gms/internal/rm;

    invoke-direct {v5, p0, p4}, Lcom/google/android/gms/internal/rm;-><init>(Lcom/google/android/gms/internal/rl;Lcom/google/android/gms/internal/ta;)V

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/om;->zza(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/ol;Ljava/lang/Long;Lcom/google/android/gms/internal/pe;)V

    return-void

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method
