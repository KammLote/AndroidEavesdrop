.class public Lcom/google/firebase/database/DatabaseReference;
.super Lcom/google/firebase/database/Query;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/database/DatabaseReference$CompletionListener;
    }
.end annotation


# static fields
.field private static zzbYJ:Lcom/google/android/gms/internal/qe;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/qo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/database/Query;-><init>(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/qo;)V

    return-void
.end method

.method public static goOffline()V
    .locals 1

    invoke-static {}, Lcom/google/firebase/database/DatabaseReference;->zzFk()Lcom/google/android/gms/internal/qe;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/rv;->zzd(Lcom/google/android/gms/internal/qb;)V

    return-void
.end method

.method public static goOnline()V
    .locals 1

    invoke-static {}, Lcom/google/firebase/database/DatabaseReference;->zzFk()Lcom/google/android/gms/internal/qe;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/rv;->zze(Lcom/google/android/gms/internal/qb;)V

    return-void
.end method

.method private static declared-synchronized zzFk()Lcom/google/android/gms/internal/qe;
    .locals 2

    const-class v1, Lcom/google/firebase/database/DatabaseReference;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/firebase/database/DatabaseReference;->zzbYJ:Lcom/google/android/gms/internal/qe;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/qe;

    invoke-direct {v0}, Lcom/google/android/gms/internal/qe;-><init>()V

    sput-object v0, Lcom/google/firebase/database/DatabaseReference;->zzbYJ:Lcom/google/android/gms/internal/qe;

    :cond_0
    sget-object v0, Lcom/google/firebase/database/DatabaseReference;->zzbYJ:Lcom/google/android/gms/internal/qe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private final zza(Lcom/google/android/gms/internal/xf;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/xf;",
            "Lcom/google/firebase/database/DatabaseReference$CompletionListener;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzbZi:Lcom/google/android/gms/internal/qo;

    invoke-static {v0}, Lcom/google/android/gms/internal/yw;->zzO(Lcom/google/android/gms/internal/qo;)V

    invoke-static {p2}, Lcom/google/android/gms/internal/yu;->zzb(Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/internal/yr;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/DatabaseReference;->zzbYW:Lcom/google/android/gms/internal/qr;

    new-instance v2, Lcom/google/firebase/database/zzd;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/firebase/database/zzd;-><init>(Lcom/google/firebase/database/DatabaseReference;Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/yr;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/qr;->zzq(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/yr;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tasks/Task;

    return-object v0
.end method

.method private final zza(Ljava/lang/Object;Lcom/google/android/gms/internal/xf;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/tasks/Task;
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

    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzbZi:Lcom/google/android/gms/internal/qo;

    invoke-static {v0}, Lcom/google/android/gms/internal/yw;->zzO(Lcom/google/android/gms/internal/qo;)V

    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzbZi:Lcom/google/android/gms/internal/qo;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/tk;->zza(Lcom/google/android/gms/internal/qo;Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/yx;->zzan(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/yw;->zzam(Ljava/lang/Object;)V

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/xi;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/xf;

    move-result-object v0

    invoke-static {p3}, Lcom/google/android/gms/internal/yu;->zzb(Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/internal/yr;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/database/DatabaseReference;->zzbYW:Lcom/google/android/gms/internal/qr;

    new-instance v3, Lcom/google/firebase/database/zzc;

    invoke-direct {v3, p0, v0, v1}, Lcom/google/firebase/database/zzc;-><init>(Lcom/google/firebase/database/DatabaseReference;Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/yr;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/qr;->zzq(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/yr;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tasks/Task;

    return-object v0
.end method

.method private final zza(Ljava/util/Map;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/tasks/Task;
    .locals 5
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

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t pass null for argument \'update\' in updateChildren()"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/yx;->zzG(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/Query;->zzbZi:Lcom/google/android/gms/internal/qo;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/yw;->zzb(Lcom/google/android/gms/internal/qo;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/px;->zzE(Ljava/util/Map;)Lcom/google/android/gms/internal/px;

    move-result-object v1

    invoke-static {p2}, Lcom/google/android/gms/internal/yu;->zzb(Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/internal/yr;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/database/DatabaseReference;->zzbYW:Lcom/google/android/gms/internal/qr;

    new-instance v4, Lcom/google/firebase/database/zze;

    invoke-direct {v4, p0, v1, v2, v0}, Lcom/google/firebase/database/zze;-><init>(Lcom/google/firebase/database/DatabaseReference;Lcom/google/android/gms/internal/px;Lcom/google/android/gms/internal/yr;Ljava/util/Map;)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/qr;->zzq(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/yr;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tasks/Task;

    return-object v0
.end method


# virtual methods
.method public child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t pass null for argument \'pathString\' in child()"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzbZi:Lcom/google/android/gms/internal/qo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/qo;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/google/android/gms/internal/yw;->zzhc(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzbZi:Lcom/google/android/gms/internal/qo;

    new-instance v1, Lcom/google/android/gms/internal/qo;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/qo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/qo;->zzh(Lcom/google/android/gms/internal/qo;)Lcom/google/android/gms/internal/qo;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/database/DatabaseReference;

    iget-object v2, p0, Lcom/google/firebase/database/DatabaseReference;->zzbYW:Lcom/google/android/gms/internal/qr;

    invoke-direct {v1, v2, v0}, Lcom/google/firebase/database/DatabaseReference;-><init>(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/qo;)V

    return-object v1

    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/internal/yw;->zzhb(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/google/firebase/database/DatabaseReference;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/firebase/database/DatabaseReference;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDatabase()Lcom/google/firebase/database/FirebaseDatabase;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/DatabaseReference;->zzbYW:Lcom/google/android/gms/internal/qr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/qr;->getDatabase()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzbZi:Lcom/google/android/gms/internal/qo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/qo;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzbZi:Lcom/google/android/gms/internal/qo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/qo;->zzHe()Lcom/google/android/gms/internal/wj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wj;->asString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getParent()Lcom/google/firebase/database/DatabaseReference;
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzbZi:Lcom/google/android/gms/internal/qo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/qo;->zzHd()Lcom/google/android/gms/internal/qo;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/google/firebase/database/DatabaseReference;

    iget-object v2, p0, Lcom/google/firebase/database/DatabaseReference;->zzbYW:Lcom/google/android/gms/internal/qr;

    invoke-direct {v0, v2, v1}, Lcom/google/firebase/database/DatabaseReference;-><init>(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/qo;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRoot()Lcom/google/firebase/database/DatabaseReference;
    .locals 4

    new-instance v0, Lcom/google/firebase/database/DatabaseReference;

    iget-object v1, p0, Lcom/google/firebase/database/DatabaseReference;->zzbYW:Lcom/google/android/gms/internal/qr;

    new-instance v2, Lcom/google/android/gms/internal/qo;

    const-string v3, ""

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/qo;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/database/DatabaseReference;-><init>(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/qo;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/firebase/database/DatabaseReference;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public onDisconnect()Lcom/google/firebase/database/OnDisconnect;
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzbZi:Lcom/google/android/gms/internal/qo;

    invoke-static {v0}, Lcom/google/android/gms/internal/yw;->zzO(Lcom/google/android/gms/internal/qo;)V

    new-instance v0, Lcom/google/firebase/database/OnDisconnect;

    iget-object v1, p0, Lcom/google/firebase/database/DatabaseReference;->zzbYW:Lcom/google/android/gms/internal/qr;

    iget-object v2, p0, Lcom/google/firebase/database/Query;->zzbZi:Lcom/google/android/gms/internal/qo;

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/database/OnDisconnect;-><init>(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/qo;)V

    return-object v0
.end method

.method public push()Lcom/google/firebase/database/DatabaseReference;
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/database/DatabaseReference;->zzbYW:Lcom/google/android/gms/internal/qr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/qr;->zzHh()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/yt;->zzaz(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/wj;->zzgT(Ljava/lang/String;)Lcom/google/android/gms/internal/wj;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/database/DatabaseReference;

    iget-object v2, p0, Lcom/google/firebase/database/DatabaseReference;->zzbYW:Lcom/google/android/gms/internal/qr;

    iget-object v3, p0, Lcom/google/firebase/database/Query;->zzbZi:Lcom/google/android/gms/internal/qo;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/qo;->zza(Lcom/google/android/gms/internal/wj;)Lcom/google/android/gms/internal/qo;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/firebase/database/DatabaseReference;-><init>(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/qo;)V

    return-object v1
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

    invoke-virtual {p0, v0}, Lcom/google/firebase/database/DatabaseReference;->setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public removeValue(Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/database/DatabaseReference;->setValue(Ljava/lang/Object;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V

    return-void
.end method

.method public runTransaction(Lcom/google/firebase/database/Transaction$Handler;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/database/DatabaseReference;->runTransaction(Lcom/google/firebase/database/Transaction$Handler;Z)V

    return-void
.end method

.method public runTransaction(Lcom/google/firebase/database/Transaction$Handler;Z)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t pass null for argument \'handler\' in runTransaction()"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzbZi:Lcom/google/android/gms/internal/qo;

    invoke-static {v0}, Lcom/google/android/gms/internal/yw;->zzO(Lcom/google/android/gms/internal/qo;)V

    iget-object v0, p0, Lcom/google/firebase/database/DatabaseReference;->zzbYW:Lcom/google/android/gms/internal/qr;

    new-instance v1, Lcom/google/firebase/database/zzf;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/firebase/database/zzf;-><init>(Lcom/google/firebase/database/DatabaseReference;Lcom/google/firebase/database/Transaction$Handler;Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/qr;->zzq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setPriority(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
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

    iget-object v0, p0, Lcom/google/firebase/database/DatabaseReference;->zzbZi:Lcom/google/android/gms/internal/qo;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/xl;->zzc(Lcom/google/android/gms/internal/qo;Ljava/lang/Object;)Lcom/google/android/gms/internal/xf;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/database/DatabaseReference;->zza(Lcom/google/android/gms/internal/xf;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public setPriority(Ljava/lang/Object;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/DatabaseReference;->zzbZi:Lcom/google/android/gms/internal/qo;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/xl;->zzc(Lcom/google/android/gms/internal/qo;Ljava/lang/Object;)Lcom/google/android/gms/internal/xf;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/firebase/database/DatabaseReference;->zza(Lcom/google/android/gms/internal/xf;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/tasks/Task;

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

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/firebase/database/DatabaseReference;->zzbZi:Lcom/google/android/gms/internal/qo;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/xl;->zzc(Lcom/google/android/gms/internal/qo;Ljava/lang/Object;)Lcom/google/android/gms/internal/xf;

    move-result-object v0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/firebase/database/DatabaseReference;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/xf;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/DatabaseReference;->zzbZi:Lcom/google/android/gms/internal/qo;

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/xl;->zzc(Lcom/google/android/gms/internal/qo;Ljava/lang/Object;)Lcom/google/android/gms/internal/xf;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/firebase/database/DatabaseReference;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/xf;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/database/DatabaseReference;->zzbZi:Lcom/google/android/gms/internal/qo;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/xl;->zzc(Lcom/google/android/gms/internal/qo;Ljava/lang/Object;)Lcom/google/android/gms/internal/xf;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/firebase/database/DatabaseReference;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/xf;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/DatabaseReference;->zzbZi:Lcom/google/android/gms/internal/qo;

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/xl;->zzc(Lcom/google/android/gms/internal/qo;Ljava/lang/Object;)Lcom/google/android/gms/internal/xf;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/google/firebase/database/DatabaseReference;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/xf;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/google/firebase/database/DatabaseReference;->getParent()Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/DatabaseReference;->zzbYW:Lcom/google/android/gms/internal/qr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/qr;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/google/firebase/database/DatabaseReference;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/database/DatabaseReference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "+"

    const-string v3, "%20"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    new-instance v2, Lcom/google/firebase/database/DatabaseException;

    const-string v3, "Failed to URLEncode key: "

    invoke-virtual {p0}, Lcom/google/firebase/database/DatabaseReference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {v2, v0, v1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
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

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/database/DatabaseReference;->zza(Ljava/util/Map;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/tasks/Task;

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

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/database/DatabaseReference;->zza(Ljava/util/Map;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method