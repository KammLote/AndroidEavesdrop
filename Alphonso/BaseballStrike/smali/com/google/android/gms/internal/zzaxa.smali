.class final Lcom/google/android/gms/internal/zzaxa;
.super Lcom/google/android/gms/internal/zzaxd;


# instance fields
.field private synthetic zzaxd:Lcom/google/android/gms/internal/zzawx;

.field private synthetic zzaxf:I

.field private synthetic zzaxg:Ljava/lang/String;

.field private synthetic zzaxh:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzawx;ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaxa;->zzaxd:Lcom/google/android/gms/internal/zzawx;

    iput p2, p0, Lcom/google/android/gms/internal/zzaxa;->zzaxf:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzaxa;->zzaxg:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzaxa;->zzaxh:Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaxd;-><init>(Lcom/google/android/gms/internal/zzawx;)V

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/android/gms/internal/zzaxa;->zzaxf:I

    packed-switch v0, :pswitch_data_0

    move v0, v2

    :goto_0
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaxf;->zzarw:Lcom/google/android/gms/internal/zzays;

    const-wide/16 v4, -0x1

    const/16 v3, 0x7d1

    const/4 v6, 0x0

    invoke-interface {v0, v4, v5, v3, v6}, Lcom/google/android/gms/internal/zzays;->zza(JILjava/lang/Object;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzawx;->zzow()Lcom/google/android/gms/internal/zzayn;

    move-result-object v0

    const-string v3, "sendPlayerRequest for unsupported playerState: %d"

    new-array v1, v1, [Ljava/lang/Object;

    iget v4, p0, Lcom/google/android/gms/internal/zzaxa;->zzaxf:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/internal/zzayn;->zzf(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void

    :pswitch_0
    move v0, v1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaxa;->zzaxd:Lcom/google/android/gms/internal/zzawx;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaxa;->zzaxg:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaxa;->zzaxh:Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzaxf;->zzarw:Lcom/google/android/gms/internal/zzays;

    invoke-static {v1, v2, v0, v3, v4}, Lcom/google/android/gms/internal/zzawx;->zza(Lcom/google/android/gms/internal/zzawx;Ljava/lang/String;ILorg/json/JSONObject;Lcom/google/android/gms/internal/zzays;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
