.class final Lcom/google/android/gms/internal/zzcxb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbJF:Lcom/google/android/gms/internal/zzcwz;

.field private synthetic zzbJG:Lcom/google/android/gms/internal/zzcus;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcwz;Lcom/google/android/gms/internal/zzcus;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcxb;->zzbJF:Lcom/google/android/gms/internal/zzcwz;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcxb;->zzbJG:Lcom/google/android/gms/internal/zzcus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcxb;->zzbJF:Lcom/google/android/gms/internal/zzcwz;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcwz;->zza(Lcom/google/android/gms/internal/zzcwz;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "TagManagerBackend emit called without loaded container."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcvj;->e(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcxb;->zzbJF:Lcom/google/android/gms/internal/zzcwz;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcwz;->zza(Lcom/google/android/gms/internal/zzcwz;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcue;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcxb;->zzbJG:Lcom/google/android/gms/internal/zzcus;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzcue;->zza(Lcom/google/android/gms/internal/zzcus;)V

    goto :goto_0
.end method
