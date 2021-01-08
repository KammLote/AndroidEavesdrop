.class final Lcom/google/android/gms/internal/zzclg;
.super Lcom/google/android/gms/internal/zzcle;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzcle",
        "<",
        "Lcom/google/android/gms/nearby/connection/PayloadCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzbwV:Lcom/google/android/gms/internal/zzcob;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzclf;Lcom/google/android/gms/internal/zzcob;)V
    .locals 1

    iput-object p2, p0, Lcom/google/android/gms/internal/zzclg;->zzbwV:Lcom/google/android/gms/internal/zzcob;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcle;-><init>(Lcom/google/android/gms/internal/zzckm;)V

    return-void
.end method


# virtual methods
.method public final synthetic zzq(Ljava/lang/Object;)V
    .locals 6

    check-cast p1, Lcom/google/android/gms/nearby/connection/PayloadCallback;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzclg;->zzbwV:Lcom/google/android/gms/internal/zzcob;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcob;->zzzK()Lcom/google/android/gms/internal/zzcon;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcop;->zza(Lcom/google/android/gms/internal/zzcon;)Lcom/google/android/gms/nearby/connection/Payload;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "NearbyConnectionsClient"

    const-string v1, "Failed to convert incoming ParcelablePayload %d to Payload."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/internal/zzclg;->zzbwV:Lcom/google/android/gms/internal/zzcob;

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

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzclg;->zzbwV:Lcom/google/android/gms/internal/zzcob;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcob;->zzzF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/nearby/connection/PayloadCallback;->onPayloadReceived(Ljava/lang/String;Lcom/google/android/gms/nearby/connection/Payload;)V

    goto :goto_0
.end method
