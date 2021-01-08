.class final Lcom/google/android/gms/internal/rm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/pe;


# instance fields
.field private synthetic zzcdS:Lcom/google/android/gms/internal/ta;

.field private synthetic zzcdT:Lcom/google/android/gms/internal/rl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/rl;Lcom/google/android/gms/internal/ta;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/rm;->zzcdT:Lcom/google/android/gms/internal/rl;

    iput-object p2, p0, Lcom/google/android/gms/internal/rm;->zzcdS:Lcom/google/android/gms/internal/ta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzaa(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/qr;->zzac(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseError;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/rm;->zzcdS:Lcom/google/android/gms/internal/ta;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ta;->zzb(Lcom/google/firebase/database/DatabaseError;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/rm;->zzcdT:Lcom/google/android/gms/internal/rl;

    iget-object v1, v1, Lcom/google/android/gms/internal/rl;->zzcdA:Lcom/google/android/gms/internal/qr;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/qr;->zza(Lcom/google/android/gms/internal/qr;Ljava/util/List;)V

    return-void
.end method
