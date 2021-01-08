.class public final Lcom/google/android/gms/internal/vl;
.super Ljava/lang/Object;


# instance fields
.field private final zzbZH:Lcom/google/android/gms/internal/wf;

.field private final zzccP:Lcom/google/android/gms/internal/qh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/qb;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/qb;->zzGS()Lcom/google/android/gms/internal/qh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vl;->zzccP:Lcom/google/android/gms/internal/qh;

    const-string v0, "EventRaiser"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/qb;->zzgP(Ljava/lang/String;)Lcom/google/android/gms/internal/wf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vl;->zzbZH:Lcom/google/android/gms/internal/wf;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/vl;)Lcom/google/android/gms/internal/wf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vl;->zzbZH:Lcom/google/android/gms/internal/wf;

    return-object v0
.end method


# virtual methods
.method public final zzV(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/gms/internal/vh;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/vl;->zzbZH:Lcom/google/android/gms/internal/wf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wf;->zzIF()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/vl;->zzbZH:Lcom/google/android/gms/internal/wf;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x1c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Raising "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " event(s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/wf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/vl;->zzccP:Lcom/google/android/gms/internal/qh;

    new-instance v2, Lcom/google/android/gms/internal/vm;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/vm;-><init>(Lcom/google/android/gms/internal/vl;Ljava/util/ArrayList;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/qh;->zzo(Ljava/lang/Runnable;)V

    return-void
.end method
