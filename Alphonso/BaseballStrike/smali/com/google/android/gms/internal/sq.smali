.class final Lcom/google/android/gms/internal/sq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/uv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/uv",
        "<",
        "Lcom/google/android/gms/internal/sk;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzceR:Lcom/google/android/gms/internal/sl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/sl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/sq;->zzceR:Lcom/google/android/gms/internal/sl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/qo;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p2, Lcom/google/android/gms/internal/sk;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/qo;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/sk;->zzHn()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/sk;->zzHo()Lcom/google/android/gms/internal/vq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vq;->zzIt()Lcom/google/android/gms/internal/vp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/sq;->zzceR:Lcom/google/android/gms/internal/sl;

    invoke-static {v1}, Lcom/google/android/gms/internal/sl;->zzh(Lcom/google/android/gms/internal/sl;)Lcom/google/android/gms/internal/td;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/sq;->zzceR:Lcom/google/android/gms/internal/sl;

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/sl;->zzb(Lcom/google/android/gms/internal/sl;Lcom/google/android/gms/internal/vp;)Lcom/google/android/gms/internal/vp;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/sq;->zzceR:Lcom/google/android/gms/internal/sl;

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/sl;->zza(Lcom/google/android/gms/internal/sl;Lcom/google/android/gms/internal/vp;)Lcom/google/android/gms/internal/te;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/td;->zza(Lcom/google/android/gms/internal/vp;Lcom/google/android/gms/internal/te;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/sk;->zzHm()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vq;->zzIt()Lcom/google/android/gms/internal/vp;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/sq;->zzceR:Lcom/google/android/gms/internal/sl;

    invoke-static {v2}, Lcom/google/android/gms/internal/sl;->zzh(Lcom/google/android/gms/internal/sl;)Lcom/google/android/gms/internal/td;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/sq;->zzceR:Lcom/google/android/gms/internal/sl;

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/sl;->zzb(Lcom/google/android/gms/internal/sl;Lcom/google/android/gms/internal/vp;)Lcom/google/android/gms/internal/vp;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/sq;->zzceR:Lcom/google/android/gms/internal/sl;

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/sl;->zza(Lcom/google/android/gms/internal/sl;Lcom/google/android/gms/internal/vp;)Lcom/google/android/gms/internal/te;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/google/android/gms/internal/td;->zza(Lcom/google/android/gms/internal/vp;Lcom/google/android/gms/internal/te;)V

    goto :goto_0
.end method
