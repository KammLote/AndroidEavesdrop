.class final Lcom/google/android/gms/internal/rk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzcdP:Lcom/google/android/gms/internal/vp;

.field private synthetic zzcdQ:Lcom/google/android/gms/internal/ta;

.field private synthetic zzcdR:Lcom/google/android/gms/internal/rj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/rj;Lcom/google/android/gms/internal/vp;Lcom/google/android/gms/internal/ta;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/rk;->zzcdR:Lcom/google/android/gms/internal/rj;

    iput-object p2, p0, Lcom/google/android/gms/internal/rk;->zzcdP:Lcom/google/android/gms/internal/vp;

    iput-object p3, p0, Lcom/google/android/gms/internal/rk;->zzcdQ:Lcom/google/android/gms/internal/ta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/rk;->zzcdR:Lcom/google/android/gms/internal/rj;

    iget-object v0, v0, Lcom/google/android/gms/internal/rj;->zzcdA:Lcom/google/android/gms/internal/qr;

    invoke-static {v0}, Lcom/google/android/gms/internal/qr;->zzd(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/se;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/rk;->zzcdP:Lcom/google/android/gms/internal/vp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vp;->zzFp()Lcom/google/android/gms/internal/qo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/se;->zzp(Lcom/google/android/gms/internal/qo;)Lcom/google/android/gms/internal/xf;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/xf;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/rk;->zzcdR:Lcom/google/android/gms/internal/rj;

    iget-object v1, v1, Lcom/google/android/gms/internal/rj;->zzcdA:Lcom/google/android/gms/internal/qr;

    invoke-static {v1}, Lcom/google/android/gms/internal/qr;->zze(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/sl;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/rk;->zzcdP:Lcom/google/android/gms/internal/vp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/vp;->zzFp()Lcom/google/android/gms/internal/qo;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/sl;->zzi(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/xf;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/rk;->zzcdR:Lcom/google/android/gms/internal/rj;

    iget-object v1, v1, Lcom/google/android/gms/internal/rj;->zzcdA:Lcom/google/android/gms/internal/qr;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/qr;->zza(Lcom/google/android/gms/internal/qr;Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/rk;->zzcdQ:Lcom/google/android/gms/internal/ta;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ta;->zzb(Lcom/google/firebase/database/DatabaseError;)Ljava/util/List;

    :cond_0
    return-void
.end method
