.class final Lcom/google/android/gms/internal/zzaxe;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzays;


# instance fields
.field private synthetic zzaxj:Lcom/google/android/gms/internal/zzawx;

.field private synthetic zzaxk:Lcom/google/android/gms/internal/zzaxd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaxd;Lcom/google/android/gms/internal/zzawx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaxe;->zzaxk:Lcom/google/android/gms/internal/zzaxd;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaxe;->zzaxj:Lcom/google/android/gms/internal/zzawx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(JILjava/lang/Object;)V
    .locals 7

    if-nez p4, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaxe;->zzaxk:Lcom/google/android/gms/internal/zzaxd;

    new-instance v1, Lcom/google/android/gms/internal/zzaxj;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, p3, v3, v4}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-wide v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzaxj;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/lang/String;JLorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaxd;->setResult(Lcom/google/android/gms/common/api/Result;)V

    :goto_0
    return-void

    :cond_0
    check-cast p4, Lcom/google/android/gms/internal/zzaxl;

    iget-object v3, p4, Lcom/google/android/gms/internal/zzaxl;->zzaxn:Ljava/lang/String;

    if-nez p3, :cond_1

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaxe;->zzaxk:Lcom/google/android/gms/internal/zzaxd;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaxd;->zzaxd:Lcom/google/android/gms/internal/zzawx;

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzawx;->zza(Lcom/google/android/gms/internal/zzawx;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaxe;->zzaxk:Lcom/google/android/gms/internal/zzaxd;

    new-instance v1, Lcom/google/android/gms/internal/zzaxj;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    iget-object v4, p4, Lcom/google/android/gms/internal/zzaxl;->zzaxv:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v2, p3, v4, v5}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    iget-wide v4, p4, Lcom/google/android/gms/internal/zzaxl;->zzaxo:J

    iget-object v6, p4, Lcom/google/android/gms/internal/zzaxl;->zzaxp:Lorg/json/JSONObject;

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzaxj;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/lang/String;JLorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaxd;->setResult(Lcom/google/android/gms/common/api/Result;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaxe;->zzaxk:Lcom/google/android/gms/internal/zzaxd;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-static {v1}, Lcom/google/android/gms/internal/zzaxd;->zzj(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaxd;->setResult(Lcom/google/android/gms/common/api/Result;)V

    goto :goto_0
.end method

.method public final zzx(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaxe;->zzaxk:Lcom/google/android/gms/internal/zzaxd;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x837

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-static {v1}, Lcom/google/android/gms/internal/zzaxd;->zzj(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaxd;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
