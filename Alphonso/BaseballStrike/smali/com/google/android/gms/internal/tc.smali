.class final Lcom/google/android/gms/internal/tc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ol;
.implements Lcom/google/android/gms/internal/ta;


# instance fields
.field private synthetic zzceR:Lcom/google/android/gms/internal/sl;

.field private final zzcfe:Lcom/google/android/gms/internal/vq;

.field private final zzcff:Lcom/google/android/gms/internal/te;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/sl;Lcom/google/android/gms/internal/vq;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/tc;->zzceR:Lcom/google/android/gms/internal/sl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/tc;->zzcfe:Lcom/google/android/gms/internal/vq;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/vq;->zzIt()Lcom/google/android/gms/internal/vp;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/sl;->zza(Lcom/google/android/gms/internal/sl;Lcom/google/android/gms/internal/vp;)Lcom/google/android/gms/internal/te;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/tc;->zzcff:Lcom/google/android/gms/internal/te;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/tc;)Lcom/google/android/gms/internal/te;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/tc;->zzcff:Lcom/google/android/gms/internal/te;

    return-object v0
.end method


# virtual methods
.method public final zzFX()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/tc;->zzcfe:Lcom/google/android/gms/internal/vq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vq;->zzIu()Lcom/google/android/gms/internal/xf;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/xf;->zzIN()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzFY()Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/tc;->zzcfe:Lcom/google/android/gms/internal/vq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vq;->zzIu()Lcom/google/android/gms/internal/xf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/yp;->zzn(Lcom/google/android/gms/internal/xf;)J

    move-result-wide v0

    const-wide/16 v2, 0x400

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zzFZ()Lcom/google/android/gms/internal/ob;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/tc;->zzcfe:Lcom/google/android/gms/internal/vq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vq;->zzIu()Lcom/google/android/gms/internal/xf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/wq;->zzh(Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/wq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/wq;->zzFQ()Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/qo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/qo;->zzHa()Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ob;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/wq;->zzFR()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ob;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public final zzb(Lcom/google/firebase/database/DatabaseError;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/DatabaseError;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/gms/internal/vh;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/tc;->zzcfe:Lcom/google/android/gms/internal/vq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vq;->zzIt()Lcom/google/android/gms/internal/vp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/tc;->zzcff:Lcom/google/android/gms/internal/te;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/tc;->zzceR:Lcom/google/android/gms/internal/sl;

    iget-object v1, p0, Lcom/google/android/gms/internal/tc;->zzcff:Lcom/google/android/gms/internal/te;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/sl;->zza(Lcom/google/android/gms/internal/te;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/tc;->zzceR:Lcom/google/android/gms/internal/sl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vp;->zzFp()Lcom/google/android/gms/internal/qo;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/sl;->zzs(Lcom/google/android/gms/internal/qo;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/tc;->zzceR:Lcom/google/android/gms/internal/sl;

    invoke-static {v0}, Lcom/google/android/gms/internal/sl;->zza(Lcom/google/android/gms/internal/sl;)Lcom/google/android/gms/internal/wf;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/tc;->zzcfe:Lcom/google/android/gms/internal/vq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vq;->zzIt()Lcom/google/android/gms/internal/vp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vp;->zzFp()Lcom/google/android/gms/internal/qo;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/firebase/database/DatabaseError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x13

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Listen at "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " failed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/wf;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/tc;->zzceR:Lcom/google/android/gms/internal/sl;

    iget-object v1, p0, Lcom/google/android/gms/internal/tc;->zzcfe:Lcom/google/android/gms/internal/vq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vq;->zzIt()Lcom/google/android/gms/internal/vp;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/sl;->zza(Lcom/google/android/gms/internal/vp;Lcom/google/firebase/database/DatabaseError;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method
