.class final Lcom/google/android/gms/internal/zzcom;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbxA:J

.field private synthetic zzbxB:Ljava/io/OutputStream;

.field private synthetic zzbxC:Lcom/google/android/gms/internal/zzcol;

.field private synthetic zzbxy:Ljava/io/InputStream;

.field private synthetic zzbxz:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcol;Ljava/io/InputStream;Ljava/io/OutputStream;JLjava/io/OutputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcom;->zzbxC:Lcom/google/android/gms/internal/zzcol;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcom;->zzbxy:Ljava/io/InputStream;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcom;->zzbxz:Ljava/io/OutputStream;

    iput-wide p4, p0, Lcom/google/android/gms/internal/zzcom;->zzbxA:J

    iput-object p6, p0, Lcom/google/android/gms/internal/zzcom;->zzbxB:Ljava/io/OutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const/4 v8, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcom;->zzbxC:Lcom/google/android/gms/internal/zzcol;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcom;->zzbxy:Ljava/io/InputStream;

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzcol;->zza(Lcom/google/android/gms/internal/zzcol;Ljava/io/InputStream;)Ljava/io/InputStream;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcom;->zzbxy:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcom;->zzbxz:Ljava/io/OutputStream;

    const/4 v4, 0x0

    const/high16 v5, 0x10000

    invoke-static {v0, v3, v4, v5}, Lcom/google/android/gms/common/util/zzn;->zza(Ljava/io/InputStream;Ljava/io/OutputStream;ZI)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcom;->zzbxy:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzn;->closeQuietly(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcom;->zzbxC:Lcom/google/android/gms/internal/zzcol;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcom;->zzbxB:Ljava/io/OutputStream;

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzcom;->zzbxA:J

    invoke-static {v0, v2, v1, v4, v5}, Lcom/google/android/gms/internal/zzcol;->zza(Lcom/google/android/gms/internal/zzcol;Ljava/io/OutputStream;ZJ)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcom;->zzbxz:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzn;->closeQuietly(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcom;->zzbxC:Lcom/google/android/gms/internal/zzcol;

    invoke-static {v0, v8}, Lcom/google/android/gms/internal/zzcol;->zza(Lcom/google/android/gms/internal/zzcol;Ljava/io/InputStream;)Ljava/io/InputStream;

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcom;->zzbxC:Lcom/google/android/gms/internal/zzcol;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzcol;->zza(Lcom/google/android/gms/internal/zzcol;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "NearbyConnections"

    const-string v3, "Exception copying stream for Payload %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-wide v6, p0, Lcom/google/android/gms/internal/zzcom;->zzbxA:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcom;->zzbxy:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzn;->closeQuietly(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcom;->zzbxC:Lcom/google/android/gms/internal/zzcol;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcom;->zzbxB:Ljava/io/OutputStream;

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzcom;->zzbxA:J

    invoke-static {v0, v1, v2, v4, v5}, Lcom/google/android/gms/internal/zzcol;->zza(Lcom/google/android/gms/internal/zzcol;Ljava/io/OutputStream;ZJ)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcom;->zzbxz:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzn;->closeQuietly(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcom;->zzbxC:Lcom/google/android/gms/internal/zzcol;

    invoke-static {v0, v8}, Lcom/google/android/gms/internal/zzcol;->zza(Lcom/google/android/gms/internal/zzcol;Ljava/io/InputStream;)Ljava/io/InputStream;

    goto :goto_0

    :cond_0
    :try_start_2
    const-string v0, "NearbyConnections"

    const-string v1, "Terminating copying stream for Payload %d due to shutdown of OutgoingPayloadStreamer."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v6, p0, Lcom/google/android/gms/internal/zzcom;->zzbxA:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move v1, v2

    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcom;->zzbxy:Ljava/io/InputStream;

    invoke-static {v2}, Lcom/google/android/gms/common/util/zzn;->closeQuietly(Ljava/io/Closeable;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcom;->zzbxC:Lcom/google/android/gms/internal/zzcol;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcom;->zzbxB:Ljava/io/OutputStream;

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzcom;->zzbxA:J

    invoke-static {v2, v3, v1, v4, v5}, Lcom/google/android/gms/internal/zzcol;->zza(Lcom/google/android/gms/internal/zzcol;Ljava/io/OutputStream;ZJ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcom;->zzbxz:Ljava/io/OutputStream;

    invoke-static {v1}, Lcom/google/android/gms/common/util/zzn;->closeQuietly(Ljava/io/Closeable;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcom;->zzbxC:Lcom/google/android/gms/internal/zzcol;

    invoke-static {v1, v8}, Lcom/google/android/gms/internal/zzcol;->zza(Lcom/google/android/gms/internal/zzcol;Ljava/io/InputStream;)Ljava/io/InputStream;

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2
.end method
