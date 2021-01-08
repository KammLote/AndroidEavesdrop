.class final Lcom/google/android/gms/internal/rn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/pe;


# instance fields
.field private synthetic zzcdA:Lcom/google/android/gms/internal/qr;

.field private synthetic zzcdU:Lcom/google/android/gms/internal/tj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/tj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/rn;->zzcdA:Lcom/google/android/gms/internal/qr;

    iput-object p2, p0, Lcom/google/android/gms/internal/rn;->zzcdU:Lcom/google/android/gms/internal/tj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzaa(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/qr;->zzac(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseError;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/rn;->zzcdA:Lcom/google/android/gms/internal/qr;

    const-string v2, "Persisted write"

    iget-object v3, p0, Lcom/google/android/gms/internal/rn;->zzcdU:Lcom/google/android/gms/internal/tj;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/tj;->zzFp()Lcom/google/android/gms/internal/qo;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/google/android/gms/internal/qr;->zza(Lcom/google/android/gms/internal/qr;Ljava/lang/String;Lcom/google/android/gms/internal/qo;Lcom/google/firebase/database/DatabaseError;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/rn;->zzcdA:Lcom/google/android/gms/internal/qr;

    iget-object v2, p0, Lcom/google/android/gms/internal/rn;->zzcdU:Lcom/google/android/gms/internal/tj;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/tj;->zzHs()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/gms/internal/rn;->zzcdU:Lcom/google/android/gms/internal/tj;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/tj;->zzFp()Lcom/google/android/gms/internal/qo;

    move-result-object v4

    invoke-static {v1, v2, v3, v4, v0}, Lcom/google/android/gms/internal/qr;->zza(Lcom/google/android/gms/internal/qr;JLcom/google/android/gms/internal/qo;Lcom/google/firebase/database/DatabaseError;)V

    return-void
.end method
