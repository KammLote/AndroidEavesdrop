.class final Lcom/google/firebase/database/zze;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbYL:Lcom/google/android/gms/internal/yr;

.field private synthetic zzbYM:Lcom/google/firebase/database/DatabaseReference;

.field private synthetic zzbYO:Lcom/google/android/gms/internal/px;

.field private synthetic zzbYP:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/DatabaseReference;Lcom/google/android/gms/internal/px;Lcom/google/android/gms/internal/yr;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/zze;->zzbYM:Lcom/google/firebase/database/DatabaseReference;

    iput-object p2, p0, Lcom/google/firebase/database/zze;->zzbYO:Lcom/google/android/gms/internal/px;

    iput-object p3, p0, Lcom/google/firebase/database/zze;->zzbYL:Lcom/google/android/gms/internal/yr;

    iput-object p4, p0, Lcom/google/firebase/database/zze;->zzbYP:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/firebase/database/zze;->zzbYM:Lcom/google/firebase/database/DatabaseReference;

    iget-object v1, v0, Lcom/google/firebase/database/DatabaseReference;->zzbYW:Lcom/google/android/gms/internal/qr;

    iget-object v0, p0, Lcom/google/firebase/database/zze;->zzbYM:Lcom/google/firebase/database/DatabaseReference;

    iget-object v2, v0, Lcom/google/firebase/database/Query;->zzbZi:Lcom/google/android/gms/internal/qo;

    iget-object v3, p0, Lcom/google/firebase/database/zze;->zzbYO:Lcom/google/android/gms/internal/px;

    iget-object v0, p0, Lcom/google/firebase/database/zze;->zzbYL:Lcom/google/android/gms/internal/yr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/yr;->zzJD()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/DatabaseReference$CompletionListener;

    iget-object v4, p0, Lcom/google/firebase/database/zze;->zzbYP:Ljava/util/Map;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/google/android/gms/internal/qr;->zza(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/px;Lcom/google/firebase/database/DatabaseReference$CompletionListener;Ljava/util/Map;)V

    return-void
.end method
