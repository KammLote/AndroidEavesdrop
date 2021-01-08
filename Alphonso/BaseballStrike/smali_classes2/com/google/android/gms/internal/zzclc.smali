.class final Lcom/google/android/gms/internal/zzclc;
.super Lcom/google/android/gms/internal/zzcle;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzcle",
        "<",
        "Lcom/google/android/gms/nearby/connection/Connections$MessageListener;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzbwV:Lcom/google/android/gms/internal/zzcob;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzclb;Lcom/google/android/gms/internal/zzcob;)V
    .locals 1

    iput-object p2, p0, Lcom/google/android/gms/internal/zzclc;->zzbwV:Lcom/google/android/gms/internal/zzcob;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcle;-><init>(Lcom/google/android/gms/internal/zzckm;)V

    return-void
.end method


# virtual methods
.method public final synthetic zzq(Ljava/lang/Object;)V
    .locals 6

    const/4 v2, 0x1

    check-cast p1, Lcom/google/android/gms/nearby/connection/Connections$MessageListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzclc;->zzbwV:Lcom/google/android/gms/internal/zzcob;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcob;->zzzK()Lcom/google/android/gms/internal/zzcon;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcop;->zza(Lcom/google/android/gms/internal/zzcon;)Lcom/google/android/gms/nearby/connection/Payload;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "NearbyConnectionsClient"

    const-string v1, "Failed to convert incoming ParcelablePayload %d to Payload."

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/internal/zzclc;->zzbwV:Lcom/google/android/gms/internal/zzcob;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcob;->zzzK()Lcom/google/android/gms/internal/zzcon;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcon;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/nearby/connection/Payload;->getType()I

    move-result v1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzclc;->zzbwV:Lcom/google/android/gms/internal/zzcob;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcob;->zzzF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/nearby/connection/Payload;->asBytes()[B

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzclc;->zzbwV:Lcom/google/android/gms/internal/zzcob;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcob;->zzzL()Z

    move-result v2

    invoke-interface {p1, v1, v0, v2}, Lcom/google/android/gms/nearby/connection/Connections$MessageListener;->onMessageReceived(Ljava/lang/String;[BZ)V

    goto :goto_0
.end method
