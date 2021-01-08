.class final Lcom/google/firebase/database/zzn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbYL:Lcom/google/android/gms/internal/yr;

.field private synthetic zzbZj:Lcom/google/firebase/database/OnDisconnect;

.field private synthetic zzbZk:Ljava/util/Map;

.field private synthetic zzbZl:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/OnDisconnect;Ljava/util/Map;Lcom/google/android/gms/internal/yr;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/zzn;->zzbZj:Lcom/google/firebase/database/OnDisconnect;

    iput-object p2, p0, Lcom/google/firebase/database/zzn;->zzbZk:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/firebase/database/zzn;->zzbYL:Lcom/google/android/gms/internal/yr;

    iput-object p4, p0, Lcom/google/firebase/database/zzn;->zzbZl:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/firebase/database/zzn;->zzbZj:Lcom/google/firebase/database/OnDisconnect;

    invoke-static {v0}, Lcom/google/firebase/database/OnDisconnect;->zzb(Lcom/google/firebase/database/OnDisconnect;)Lcom/google/android/gms/internal/qr;

    move-result-object v1

    iget-object v0, p0, Lcom/google/firebase/database/zzn;->zzbZj:Lcom/google/firebase/database/OnDisconnect;

    invoke-static {v0}, Lcom/google/firebase/database/OnDisconnect;->zza(Lcom/google/firebase/database/OnDisconnect;)Lcom/google/android/gms/internal/qo;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/database/zzn;->zzbZk:Ljava/util/Map;

    iget-object v0, p0, Lcom/google/firebase/database/zzn;->zzbYL:Lcom/google/android/gms/internal/yr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/yr;->zzJD()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/DatabaseReference$CompletionListener;

    iget-object v4, p0, Lcom/google/firebase/database/zzn;->zzbZl:Ljava/util/Map;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/google/android/gms/internal/qr;->zza(Lcom/google/android/gms/internal/qo;Ljava/util/Map;Lcom/google/firebase/database/DatabaseReference$CompletionListener;Ljava/util/Map;)V

    return-void
.end method
