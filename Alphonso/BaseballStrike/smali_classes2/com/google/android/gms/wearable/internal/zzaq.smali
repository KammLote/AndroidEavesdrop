.class final Lcom/google/android/gms/wearable/internal/zzaq;
.super Lcom/google/android/gms/wearable/internal/zzn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/wearable/internal/zzn",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzbSi:Lcom/google/android/gms/wearable/internal/zzak;

.field private synthetic zzbSk:J

.field private synthetic zzbSl:J

.field private synthetic zzbzR:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/zzak;Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/net/Uri;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zzaq;->zzbSi:Lcom/google/android/gms/wearable/internal/zzak;

    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/zzaq;->zzbzR:Landroid/net/Uri;

    iput-wide p4, p0, Lcom/google/android/gms/wearable/internal/zzaq;->zzbSk:J

    iput-wide p6, p0, Lcom/google/android/gms/wearable/internal/zzaq;->zzbSl:J

    invoke-direct {p0, p2}, Lcom/google/android/gms/wearable/internal/zzn;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/wearable/internal/zzfw;

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzaq;->zzbSi:Lcom/google/android/gms/wearable/internal/zzak;

    invoke-static {v1}, Lcom/google/android/gms/wearable/internal/zzak;->zza(Lcom/google/android/gms/wearable/internal/zzak;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/wearable/internal/zzaq;->zzbzR:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/google/android/gms/wearable/internal/zzaq;->zzbSk:J

    iget-wide v6, p0, Lcom/google/android/gms/wearable/internal/zzaq;->zzbSl:J

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/wearable/internal/zzfw;->zza(Lcom/google/android/gms/internal/zzbay;Ljava/lang/String;Landroid/net/Uri;JJ)V

    return-void
.end method

.method public final synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 0

    return-object p1
.end method
