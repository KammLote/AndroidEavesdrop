.class public Lcom/google/firebase/database/OnDisconnect;
.super Ljava/lang/Object;


# instance fields
.field private zzbYW:Lcom/google/android/gms/internal/qr;

.field private zzbZi:Lcom/google/android/gms/internal/qo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/qo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/OnDisconnect;->zzbYW:Lcom/google/android/gms/internal/qr;

    iput-object p2, p0, Lcom/google/firebase/database/OnDisconnect;->zzbZi:Lcom/google/android/gms/internal/qo;

    return-void
.end method

.method static synthetic zza(Lcom/google/firebase/database/OnDisconnect;)Lcom/google/android/gms/internal/qo;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/OnDisconnect;->zzbZi:Lcom/google/android/gms/internal/qo;

    return-object v0
.end method

.method private final zza(Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/DatabaseReference$CompletionListener;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/yu;->zzb(Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/internal/yr;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/OnDisconnect;->zzbYW:Lcom/google/android/gms/internal/qr;

    new-instance v2, Lcom/google/firebase/database/zzo;

    invoke-direct {v2, p0, v0}, Lcom/google/firebase/database/zzo;-><init>(Lcom/google/firebase/database/OnDisconnect;Lcom/google/android/gms/internal/yr;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/qr;->zzq(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/yr;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tasks/Task;

    return-object v0
.end method

.method private final zza(Ljava/util/Map;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/firebase/database/DatabaseReference$CompletionListener;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/OnDisconnect;->zzbZi:Lcom/google/android/gms/internal/qo;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/yw;->zzb(Lcom/google/android/gms/internal/qo;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p2}, Lcom/google/android/gms/internal/yu;->zzb(Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/internal/yr;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/database/OnDisconnect;->zzbYW:Lcom/google/android/gms/internal/qr;

    new-instance v3, Lcom/google/firebase/database/zzn;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/google/firebase/database/zzn;-><init>(Lcom/google/firebase/database/OnDisconnect;Ljava/util/Map;Lcom/google/android/gms/internal/yr;Ljava/util/Map;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/qr;->zzq(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/yr;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tasks/Task;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/firebase/database/OnDisconnect;)Lcom/google/android/gms/internal/qr;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/OnDisconnect;->zzbYW:Lcom/google/android/gms/internal/qr;

    return-object v0
.end method

.method private final zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/xf;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/xf;",
            "Lcom/google/firebase/database/DatabaseReference$CompletionListener;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/OnDisconnect;->zzbZi:Lcom/google/android/gms/internal/qo;

    invoke-static {v0}, Lcom/google/android/gms/internal/yw;->zzO(Lcom/google/android/gms/internal/qo;)V

    iget-object v0, p0, Lcom/google/firebase/database/OnDisconnect;->zzbZi:Lcom/google/android/gms/internal/qo;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/tk;->zza(Lcom/google/android/gms/internal/qo;Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/yx;->zzan(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/yw;->zzam(Ljava/lang/Object;)V

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/xi;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/xf;

    move-result-object v0

    invoke-static {p3}, Lcom/google/android/gms/internal/yu;->zzb(Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/internal/yr;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/database/OnDisconnect;->zzbYW:Lcom/google/android/gms/internal/qr;

    new-instance v3, Lcom/google/firebase/database/zzm;

    invoke-direct {v3, p0, v0, v1}, Lcom/google/firebase/database/zzm;-><init>(Lcom/google/firebase/database/OnDisconnect;Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/yr;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/qr;->zzq(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/yr;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tasks/Task;

    return-object v0
.end method


# virtual methods
.method public cancel()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/firebase/database/OnDisconnect;->zza(Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public cancel(Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/database/OnDisconnect;->zza(Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public removeValue()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/firebase/database/OnDisconnect;->setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public removeValue(Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/database/OnDisconnect;->setValue(Ljava/lang/Object;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V

    return-void
.end method

.method public setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/wx;->zzIZ()Lcom/google/android/gms/internal/wx;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/firebase/database/OnDisconnect;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/xf;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;D)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "D)",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/OnDisconnect;->zzbZi:Lcom/google/android/gms/internal/qo;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/xl;->zzc(Lcom/google/android/gms/internal/qo;Ljava/lang/Object;)Lcom/google/android/gms/internal/xf;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/firebase/database/OnDisconnect;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/xf;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/OnDisconnect;->zzbZi:Lcom/google/android/gms/internal/qo;

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/xl;->zzc(Lcom/google/android/gms/internal/qo;Ljava/lang/Object;)Lcom/google/android/gms/internal/xf;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/firebase/database/OnDisconnect;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/xf;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;DLcom/google/firebase/database/DatabaseReference$CompletionListener;)V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/database/OnDisconnect;->zzbZi:Lcom/google/android/gms/internal/qo;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/xl;->zzc(Lcom/google/android/gms/internal/qo;Ljava/lang/Object;)Lcom/google/android/gms/internal/xf;

    move-result-object v0

    invoke-direct {p0, p1, v0, p4}, Lcom/google/firebase/database/OnDisconnect;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/xf;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public setValue(Ljava/lang/Object;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/wx;->zzIZ()Lcom/google/android/gms/internal/wx;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/firebase/database/OnDisconnect;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/xf;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/String;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/OnDisconnect;->zzbZi:Lcom/google/android/gms/internal/qo;

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/xl;->zzc(Lcom/google/android/gms/internal/qo;Ljava/lang/Object;)Lcom/google/android/gms/internal/xf;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/google/firebase/database/OnDisconnect;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/xf;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public setValue(Ljava/lang/Object;Ljava/util/Map;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/OnDisconnect;->zzbZi:Lcom/google/android/gms/internal/qo;

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/xl;->zzc(Lcom/google/android/gms/internal/qo;Ljava/lang/Object;)Lcom/google/android/gms/internal/xf;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/google/firebase/database/OnDisconnect;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/xf;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public updateChildren(Ljava/util/Map;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/database/OnDisconnect;->zza(Ljava/util/Map;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public updateChildren(Ljava/util/Map;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/firebase/database/DatabaseReference$CompletionListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/database/OnDisconnect;->zza(Ljava/util/Map;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
