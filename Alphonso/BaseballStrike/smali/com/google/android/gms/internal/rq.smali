.class final Lcom/google/android/gms/internal/rq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/pe;


# instance fields
.field private synthetic zzccI:Lcom/google/android/gms/internal/qo;

.field private synthetic zzcdA:Lcom/google/android/gms/internal/qr;

.field private synthetic zzcdD:Lcom/google/firebase/database/DatabaseReference$CompletionListener;

.field private synthetic zzcdX:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/qo;JLcom/google/firebase/database/DatabaseReference$CompletionListener;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/rq;->zzcdA:Lcom/google/android/gms/internal/qr;

    iput-object p2, p0, Lcom/google/android/gms/internal/rq;->zzccI:Lcom/google/android/gms/internal/qo;

    iput-wide p3, p0, Lcom/google/android/gms/internal/rq;->zzcdX:J

    iput-object p5, p0, Lcom/google/android/gms/internal/rq;->zzcdD:Lcom/google/firebase/database/DatabaseReference$CompletionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzaa(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/qr;->zzac(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseError;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/rq;->zzcdA:Lcom/google/android/gms/internal/qr;

    const-string v2, "updateChildren"

    iget-object v3, p0, Lcom/google/android/gms/internal/rq;->zzccI:Lcom/google/android/gms/internal/qo;

    invoke-static {v1, v2, v3, v0}, Lcom/google/android/gms/internal/qr;->zza(Lcom/google/android/gms/internal/qr;Ljava/lang/String;Lcom/google/android/gms/internal/qo;Lcom/google/firebase/database/DatabaseError;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/rq;->zzcdA:Lcom/google/android/gms/internal/qr;

    iget-wide v2, p0, Lcom/google/android/gms/internal/rq;->zzcdX:J

    iget-object v4, p0, Lcom/google/android/gms/internal/rq;->zzccI:Lcom/google/android/gms/internal/qo;

    invoke-static {v1, v2, v3, v4, v0}, Lcom/google/android/gms/internal/qr;->zza(Lcom/google/android/gms/internal/qr;JLcom/google/android/gms/internal/qo;Lcom/google/firebase/database/DatabaseError;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/rq;->zzcdA:Lcom/google/android/gms/internal/qr;

    iget-object v2, p0, Lcom/google/android/gms/internal/rq;->zzcdD:Lcom/google/firebase/database/DatabaseReference$CompletionListener;

    iget-object v3, p0, Lcom/google/android/gms/internal/rq;->zzccI:Lcom/google/android/gms/internal/qo;

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/gms/internal/qr;->zza(Lcom/google/firebase/database/DatabaseReference$CompletionListener;Lcom/google/firebase/database/DatabaseError;Lcom/google/android/gms/internal/qo;)V

    return-void
.end method
