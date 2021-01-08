.class final Lcom/google/android/gms/internal/tn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/uw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/uw",
        "<",
        "Lcom/google/android/gms/internal/tj;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzcfw:Z

.field private synthetic zzcfx:Ljava/util/List;

.field private synthetic zzcfy:Lcom/google/android/gms/internal/qo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/tm;ZLjava/util/List;Lcom/google/android/gms/internal/qo;)V
    .locals 0

    iput-boolean p2, p0, Lcom/google/android/gms/internal/tn;->zzcfw:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/tn;->zzcfx:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/internal/tn;->zzcfy:Lcom/google/android/gms/internal/qo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzaj(Ljava/lang/Object;)Z
    .locals 4

    check-cast p1, Lcom/google/android/gms/internal/tj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/tj;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/tn;->zzcfw:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/tn;->zzcfx:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/tj;->zzHs()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/tj;->zzFp()Lcom/google/android/gms/internal/qo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/tn;->zzcfy:Lcom/google/android/gms/internal/qo;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/qo;->zzi(Lcom/google/android/gms/internal/qo;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/tn;->zzcfy:Lcom/google/android/gms/internal/qo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/tj;->zzFp()Lcom/google/android/gms/internal/qo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/qo;->zzi(Lcom/google/android/gms/internal/qo;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
