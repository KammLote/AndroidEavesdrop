.class final Lcom/google/firebase/database/zzo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbYL:Lcom/google/android/gms/internal/yr;

.field private synthetic zzbZj:Lcom/google/firebase/database/OnDisconnect;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/OnDisconnect;Lcom/google/android/gms/internal/yr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/zzo;->zzbZj:Lcom/google/firebase/database/OnDisconnect;

    iput-object p2, p0, Lcom/google/firebase/database/zzo;->zzbYL:Lcom/google/android/gms/internal/yr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/database/zzo;->zzbZj:Lcom/google/firebase/database/OnDisconnect;

    invoke-static {v0}, Lcom/google/firebase/database/OnDisconnect;->zzb(Lcom/google/firebase/database/OnDisconnect;)Lcom/google/android/gms/internal/qr;

    move-result-object v1

    iget-object v0, p0, Lcom/google/firebase/database/zzo;->zzbZj:Lcom/google/firebase/database/OnDisconnect;

    invoke-static {v0}, Lcom/google/firebase/database/OnDisconnect;->zza(Lcom/google/firebase/database/OnDisconnect;)Lcom/google/android/gms/internal/qo;

    move-result-object v2

    iget-object v0, p0, Lcom/google/firebase/database/zzo;->zzbYL:Lcom/google/android/gms/internal/yr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/yr;->zzJD()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/DatabaseReference$CompletionListener;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/qr;->zza(Lcom/google/android/gms/internal/qo;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V

    return-void
.end method
