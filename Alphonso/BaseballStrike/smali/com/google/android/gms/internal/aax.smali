.class public final Lcom/google/android/gms/internal/aax;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mContext:Landroid/content/Context;

.field private zzcnh:Lcom/google/android/gms/internal/abb;

.field private zzcnp:Lcom/google/android/gms/internal/aay;

.field private zzcnq:Lcom/google/android/gms/internal/aay;

.field private zzcnr:Lcom/google/android/gms/internal/aay;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/aay;Lcom/google/android/gms/internal/aay;Lcom/google/android/gms/internal/aay;Lcom/google/android/gms/internal/abb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/aax;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/aax;->zzcnp:Lcom/google/android/gms/internal/aay;

    iput-object p3, p0, Lcom/google/android/gms/internal/aax;->zzcnq:Lcom/google/android/gms/internal/aay;

    iput-object p4, p0, Lcom/google/android/gms/internal/aax;->zzcnr:Lcom/google/android/gms/internal/aay;

    iput-object p5, p0, Lcom/google/android/gms/internal/aax;->zzcnh:Lcom/google/android/gms/internal/abb;

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/aay;)Lcom/google/android/gms/internal/abc;
    .locals 10

    new-instance v3, Lcom/google/android/gms/internal/abc;

    invoke-direct {v3}, Lcom/google/android/gms/internal/abc;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aay;->zzKC()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aay;->zzKC()Ljava/util/Map;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v9, Lcom/google/android/gms/internal/abd;

    invoke-direct {v9}, Lcom/google/android/gms/internal/abd;-><init>()V

    iput-object v2, v9, Lcom/google/android/gms/internal/abd;->key:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iput-object v2, v9, Lcom/google/android/gms/internal/abd;->zzcnC:[B

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/abf;

    invoke-direct {v1}, Lcom/google/android/gms/internal/abf;-><init>()V

    iput-object v0, v1, Lcom/google/android/gms/internal/abf;->zzbxU:Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/internal/abd;

    invoke-interface {v7, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/abd;

    iput-object v0, v1, Lcom/google/android/gms/internal/abf;->zzcnH:[Lcom/google/android/gms/internal/abd;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/internal/abf;

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/abf;

    iput-object v0, v3, Lcom/google/android/gms/internal/abc;->zzcnz:[Lcom/google/android/gms/internal/abf;

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/aay;->zzss()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aay;->zzss()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [[B

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, v3, Lcom/google/android/gms/internal/abc;->zzcnA:[[B

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/aay;->getTimestamp()J

    move-result-wide v0

    iput-wide v0, v3, Lcom/google/android/gms/internal/abc;->timestamp:J

    return-object v3
.end method


# virtual methods
.method public final run()V
    .locals 10

    new-instance v2, Lcom/google/android/gms/internal/abg;

    invoke-direct {v2}, Lcom/google/android/gms/internal/abg;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/aax;->zzcnp:Lcom/google/android/gms/internal/aay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/aax;->zzcnp:Lcom/google/android/gms/internal/aay;

    invoke-static {v0}, Lcom/google/android/gms/internal/aax;->zza(Lcom/google/android/gms/internal/aay;)Lcom/google/android/gms/internal/abc;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/internal/abg;->zzcnI:Lcom/google/android/gms/internal/abc;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aax;->zzcnq:Lcom/google/android/gms/internal/aay;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/aax;->zzcnq:Lcom/google/android/gms/internal/aay;

    invoke-static {v0}, Lcom/google/android/gms/internal/aax;->zza(Lcom/google/android/gms/internal/aay;)Lcom/google/android/gms/internal/abc;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/internal/abg;->zzcnJ:Lcom/google/android/gms/internal/abc;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/aax;->zzcnr:Lcom/google/android/gms/internal/aay;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/aax;->zzcnr:Lcom/google/android/gms/internal/aay;

    invoke-static {v0}, Lcom/google/android/gms/internal/aax;->zza(Lcom/google/android/gms/internal/aay;)Lcom/google/android/gms/internal/abc;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/internal/abg;->zzcnK:Lcom/google/android/gms/internal/abc;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/aax;->zzcnh:Lcom/google/android/gms/internal/abb;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/abe;

    invoke-direct {v0}, Lcom/google/android/gms/internal/abe;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/aax;->zzcnh:Lcom/google/android/gms/internal/abb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/abb;->getLastFetchStatus()I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/internal/abe;->zzcnD:I

    iget-object v1, p0, Lcom/google/android/gms/internal/aax;->zzcnh:Lcom/google/android/gms/internal/abb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/abb;->isDeveloperModeEnabled()Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/abe;->zzcnE:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/aax;->zzcnh:Lcom/google/android/gms/internal/abb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/abb;->zzKG()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/google/android/gms/internal/abe;->zzcnF:J

    iput-object v0, v2, Lcom/google/android/gms/internal/abg;->zzcnL:Lcom/google/android/gms/internal/abe;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/aax;->zzcnh:Lcom/google/android/gms/internal/abb;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/aax;->zzcnh:Lcom/google/android/gms/internal/abb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/abb;->zzKE()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/aax;->zzcnh:Lcom/google/android/gms/internal/abb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/abb;->zzKE()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v6, Lcom/google/android/gms/internal/abh;

    invoke-direct {v6}, Lcom/google/android/gms/internal/abh;-><init>()V

    iput-object v0, v6, Lcom/google/android/gms/internal/abh;->zzbxU:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/aav;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/aav;->zzKB()J

    move-result-wide v8

    iput-wide v8, v6, Lcom/google/android/gms/internal/abh;->zzcnO:J

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aav;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aav;->zzKA()I

    move-result v0

    iput v0, v6, Lcom/google/android/gms/internal/abh;->resourceId:I

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/internal/abh;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/abh;

    iput-object v0, v2, Lcom/google/android/gms/internal/abg;->zzcnM:[Lcom/google/android/gms/internal/abh;

    :cond_6
    invoke-static {v2}, Lcom/google/android/gms/internal/adg;->zzc(Lcom/google/android/gms/internal/adg;)[B

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/aax;->mContext:Landroid/content/Context;

    const-string v2, "persisted_config"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AsyncPersisterTask"

    const-string v2, "Could not persist config."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
